class Pt{
      var x : real;
      var y : real;
}

var p = new Pt(1,2);
writeln("The value of p is ",p.x," ", p.y);
delete p;
writeln("The value of p is ",p.x," ", p.y);