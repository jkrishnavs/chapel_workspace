class EC {
  var i: sync int(64) = 0;
  var b: sync bool = true;
}

proc up(e: EC) {
  var i = e.i;
  if i == 0 then
    e.b.reset();
  e.i = i + 1;
}

proc down(e: EC) {
  var i = e.i;
  if i == 1 then
    e.b = true;
  e.i = i - 1;
}

proc allocate() {
  return new EC();
}

proc wait(e: EC) {
  e.b;
  e.i; // wait until down is finished setting i
  delete e;
}

config var n = 1000;

proc main {
  var a = 0;
  for i in 1..n {
    //var unused = allocate();
    var e = allocate();
    up(e);
    begin with (ref a) {
      a += 1;
      down(e);
    }
    wait(e);
  }
  writeln(a == n);
}