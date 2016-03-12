proc test1(x: int ) {
    var x1: int = x;
    var done$: sync bool;
    begin with (ref x1){
      test2(x1);  // test1() may have exited by the time this is executed
      if(x1 == 2) then
            done$ = true;
    }
    if(x1 == 1) then 
    	  done$ = true;
    done$;
}
proc test2(ref x1) {
    writeln(x1);
}


proc main(){     
     test1(1);
     test1(2);
}