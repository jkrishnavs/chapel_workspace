use Time; 
proc tester(){
  var x : int = 5;
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
   tester();
}