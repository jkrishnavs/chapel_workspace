config const size = 16;
config var branch = 1;
ref intref = branch;
if branch then {
   var i : int = 2;
   intref = i;
}
else {
   var i : int = 3;
   intref = i;
}
writeln("The value of i outside scope is ",intref);
var arr : [size]  int;
for j in  1 .. size do{
    arr[j] = -j;
}
writeln(for j in 1 ..size do arr[j]);
writeln("The value of i in the end is ",intref);