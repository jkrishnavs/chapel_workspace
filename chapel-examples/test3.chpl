const size = 16;
proc foo() ref : int{
     var p : int = 5;
     ref q = p;
     return q;
}

var pt = foo();
var a : [size] int;
for i in 1.. size do {
    a[i] = pt - i;
    writeln("The value of a[i] and pt is ", a[i], " ",pt);
}
