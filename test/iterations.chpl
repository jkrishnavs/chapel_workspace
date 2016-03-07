config const arrSize = 16;// compile time 
var arr : [1 .. arrSize] int;
var pararr : [1 .. arrSize] int;

for i in 1 .. arrSize do {
    arr[i] = i;
    writeln("iteration value is ", i, " and array value is ", arr[i]);
}

forall i in 1 .. arrSize do {
    pararr[i] = i;
    writeln("parallel iteration value is ", i, " and array value is ", pararr[i]);
}
