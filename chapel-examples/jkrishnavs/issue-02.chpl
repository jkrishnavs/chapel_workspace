proc test1() {
  sync {
    begin {var x1: int = 10;
      begin with (ref x1) {
        print(x1);
      }
    }
  }
}

proc print (ref x1) {
  writeln(x1);  // test1() may have exited by the time this is executed
}

proc main() {
  test1();
}
