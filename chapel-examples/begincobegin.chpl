proc test1() {
    var x1: int;
    x1 = 5;
    begin with (ref x1){
      writeln(x1);  // test1() may have exited by the time this is executed
     
    }
    x1=-1;
    writeln("After");
    begin with (ref x1) {
      writeln(x1);  // test1() may have exited by the time this is executed
     
    }
}
proc test2() {
    var x1: int;
    x1 = 4;
    begin with (ref x1){
      writeln(x1);  // test1() may have exited by the time this is executed
     
    }
    x1=-3;
    writeln("After");
    begin with (ref x1) {
      writeln(x1);  // test1() may have exited by the time this is executed
     
    }
}
proc main(){
     test1();
     var arr : [1..16] int;
     test2();
     forall i in 1 ..16{
     	    arr[i] += i*i +5; 
     }
     test1();  
     forall i in 1 ..16{
     	    arr[i] += i*i +5; 
     }
     test2();
     forall i in 1..16{
     	    writeln(arr[i]);
     }
}