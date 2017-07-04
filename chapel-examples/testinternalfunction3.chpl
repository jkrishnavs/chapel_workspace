use Time; 
proc tester(){
  var x : int = 5;
  begin with (ref x){
    update();
    write(x);
    x = 9 ;
    begin with (ref x){
      write(x);
    }
  }
  proc update(){
    x = 3;
  }  
}

proc write(ref x){
  writeln(x);
}

proc main(){
   tester();
}