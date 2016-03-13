proc test1(x: int ) {
  var x1: int = x;
  var done$: sync bool;
  begin with (ref x1){
    test2(x1);
    done$ = true; // ---> SYNC LINE
  }
  done$;
  // Here proper synchronization happens
  // beacuse sync variable change its state to empty.
  begin with (ref x1){
    test2(x1);
    done$ = true; // ---> SYNC LINE
  }
  done$;
}

proc test2(ref x1) {
  writeln(x1);
}

proc main(){
begin  test1(1); // --> CALL 1
begin  test1(2); // --> CALL2
}
