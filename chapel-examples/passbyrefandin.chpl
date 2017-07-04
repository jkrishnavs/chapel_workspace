proc test() {
  var x: int;
  var s1$: sync bool; 
  x= 5;
  begin with (in x)
    {
      x = x+5;
      s1$= true;
    }
  begin with (ref x) 
    {
      writeln(x);
    }
}

proc useX(ref x) { writeln(x); }

proc main(){
  test();
}