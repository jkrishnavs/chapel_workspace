proc test() {
  var x: int;
  var s1$: sync bool; 
  x= 5;
  begin with (ref x) 
    {
      begin with(ref x)
	{
	  writeln(x);
	  s1$ = true;
	}
      begin 
	{
	  s1$;
	}
    }
}

proc useX(ref x) { writeln(x); }

proc main(){
  test();
}