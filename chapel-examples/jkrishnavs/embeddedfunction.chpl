proc test() {
  var x: int;
  x= 5;
  proc useX() {
    writeln(x);
  }
  begin {
    useX(); 
  }
}

proc main(){
  test();
}