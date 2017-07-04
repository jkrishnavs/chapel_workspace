use Time; 
proc tester(ref x){
  var x : int = 1;
  {
    var x : int = 9;

    begin{ Time.sleep(4); writeln(x);}
    begin with (ref x){
      begin with (ref x){
	write(x);
      }
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