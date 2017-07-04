proc fdaaadsbdkbbb () : c_ptr(int) {
     var p  : c_ptr(int);
     var q  : int;
     p = c_ptr(q);
     return p;
}

var x : c_ptr(int);
// cannot pass c_pt as argument.. 
x = fdaaadsbdkbbb();
var i: int; 
var arr:  [100] int;
for i in 1 .. 100 do{
    a[i] = x - 100;
    printf("%d %d\n",a[i],x);
}
