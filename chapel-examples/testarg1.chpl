use Time;
proc test() {
  var x: int;
  var s1$: sync bool; 
  x= 5;
  begin with(ref x)
    {
      Time.sleep(1);
      useX(x);
    }
  begin{writeln(x);}
}

proc useX(ref x) { writeln(x); }

proc main(){
  test();
}