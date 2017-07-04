use Time;
proc test() {
  var x: int;
  var s1$: sync bool; 
  x= 5;
  begin with (ref x) 
    {
      begin with(ref x)
	{
	  Time.sleep(10);
	  writeln(x);
	  s1$ = true;
	}
      begin 
	{
	  Time.sleep(4);
	  s1$;
	}
      s1$ = true;
      s1$ = true;
    }
  s1$;
  s1$;
}

proc useX(ref x) { writeln(x); }

proc main(){
  test();
}