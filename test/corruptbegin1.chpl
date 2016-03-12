proc test1(x: int ) {
    var x1: int;
    x1 = x;
    writeln(x1);
    begin with (ref x1){
      test2(x1);  // test1() may have exited by the time this is executed
     
    }
    x1=-1;
}
proc test2(ref x1) {
     /*wait command*/
   var j : int;
//    for i in {1 .. 20000} {
//    	j+=1;	
 //   }
    writeln(x1);
}


proc main(){
     test1(1);
     var arr : [1..16] int;
     forall i in 1 ..16{
     	    arr[i] = 100 + i; 
     }
     test1(2);
     sync;
}