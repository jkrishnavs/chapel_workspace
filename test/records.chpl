config const size = 4;

record Point {
       var x, y: real;
}


class Pointc{
      var x,y: real;
}

var p,q: Point;
var pclass,qclass: Pointc;
writeln("The point co ordinates are ",p.x," ",p.y);
p = new Point(1.0, 1.0);
q = p;
writeln("p co ordinates are ",p.x," ",p.y," q co ordinates are ", q.x," ",q.y);
p = new Point(3.0, 3.0);
write("Create new object:");
writeln("p co ordinates are ",p.x," ",p.y," q co ordinates are ", q.x," ",q.y);
q = p;
p.x = 5.0;
write("update feild:");
writeln("p co ordinates are ",p.x," ",p.y," q co ordinates are ", q.x," ",q.y);
writeln("classes");
pclass = new Pointc(2.0, 2.0);
qclass = pclass;
writeln("p co ordinates are ",pclass.x," ",pclass.y," q co ordinates are ", qclass.x," ",qclass.y);
write("Create new object:");
pclass = new Pointc(4.0, 4.0);
writeln("p co ordinates are ",pclass.x," ",pclass.y," q co ordinates are ", qclass.x," ",qclass.y);
qclass=pclass;
pclass.x = 6.0;
write("update feild:");
writeln("p co ordinates are ",pclass.x," ",pclass.y," q co ordinates are ", qclass.x," ",qclass.y);

