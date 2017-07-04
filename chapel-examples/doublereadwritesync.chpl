use Time;
proc main(){
     var s1$ : sync bool;
     begin
       {
	 s1$ = true;
	 s1$ = true;
       }
     Time.sleep(4);
     s1$;
     s1$;
}
