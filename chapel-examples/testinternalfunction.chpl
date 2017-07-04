use Time; 
proc tester(ref x){
  proc update(){
    x = 3;
  }  
  begin with (ref x){
    update();
    write(x);
    x = 9 ;
    begin with (ref x){
      write(x);
    }
  }
}

proc write(ref x){
  writeln(x);
}

proc main(){
  var x : int = 5;
   tester(x);
}