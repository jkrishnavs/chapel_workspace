proc foo () {
  writeln("Hello World");
}

proc main(){
  var i: int; 
  var arr:  [100] int;
  coforall i in 1 .. 100 do{
    arr[i] = i - 100;
    foo();  
  }
}

