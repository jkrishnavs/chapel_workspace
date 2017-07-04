use Time;
proc tester(y:int){
  
  var x : int = 6;

  begin{ writeln(x);}
  begin{ writeln(x);}
  begin with (ref x){ writeln(x);}

}



proc main(){
  var x : int = 5;
  tester(x);
}