proc test1() {
  var x1: int = 10;
  test2(x1);
}

proc test2 (ref x2) {
  begin with (ref x2) {
    print(x2);
  }
}

proc print (ref x2) {
  writeln(x2);  // test1() may have exited by the time this is executed
}
proc main() {
  test1();
}
