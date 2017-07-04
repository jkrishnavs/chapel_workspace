record cls{
      var p : int;
      var q : int; 
}

proc foo(): int {
     var p : int;
     var newcls = new cls();
     newcls.p = 1;
     newcls.q = 2;
     p = 99999;
     ref pref = p;
     writeln(newcls.p, newcls.q);
     return pref;
}

var newcl : cls;
//newcl = foo();
var p : int;
p = foo();
var arr : [{1..1000}] int;
for i in {1 .. 1000} {
    arr[i] = i;   
//    write(arr[i]);
}
writeln();
writeln(p);    
//writeln(newcl.p, newcl.q);