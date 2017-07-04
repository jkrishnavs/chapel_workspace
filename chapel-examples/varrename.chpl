use Time; 
proc tester(){
  var x : int = 5;
  begin with (ref x){
    update();
    var x: int = 9; 
    write(x);
    begin with (ref x){
      write(x);
    }
  }
  proc update(){
    x = 3;
  }  
  Time.sleep(5);
  write(x);
}

proc write(ref x){
  writeln(x);
}

proc main(){
   tester();
}