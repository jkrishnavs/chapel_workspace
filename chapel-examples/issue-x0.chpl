proc test1() {
  var x1: int = 10;
  test2(x1);
}

proc test2 (ref x2) {
  writeln(x2);
  // IMP : should not show waring since its not
  // by ref
  begin with (in x2){
    x2 = x2 +1;
    writeln(x2);
    print(x2);
  }
  writeln(x2);
}

proc print (ref x2) {
  writeln(x2); 
}
proc main() {
  test1();
}
