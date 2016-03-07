proc foo () : c_ptr(int) {
     var p  : c_ptr(int);
     var q  : int;
     p = c_ptr(q);
     return p;
}

var x : c_ptr(int);
  x = foo();
var i : int; 
var arr:  [100] int;
  for(i = 0;i<100;i++){
    a[i] = *x - 100;
    printf("%d %d\n",a[i],*x);
  }
