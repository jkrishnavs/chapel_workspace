proc test1(x: int ) {
  var x1: int = x;
  var done$: single bool;
  begin with (ref x1){
    test2(x1);
    done$ = true; // ---> SYNC LINE
  }
  done$;
  // Single does not reset state to empty.
  // Because of that, even though
  // this statement synchonizes with
  // the next done$, the results in currepted values.
  begin with (ref x1){
    test2(x1);
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
