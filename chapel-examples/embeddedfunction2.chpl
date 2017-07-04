proc test() {
  var x: int;
  x= 5;
  proc useX() { writeln(x); }
  begin {
    useX(); 
  }
  begin {
    useX(); 
  }
  begin with (ref x) {
    writeln(x);
    useX(); 		
  }
}

proc main(){
  test();
}