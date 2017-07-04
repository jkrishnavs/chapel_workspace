use Time; 
proc tester(ref x){
  begin{ Time.sleep(4); writeln(x);}
  begin with (ref x){
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