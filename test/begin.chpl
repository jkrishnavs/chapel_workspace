proc stmt(x:int){
     writeln(x);
}

proc main(){
var s1$, s2$, s3$: single bool;
begin { stmt(1); s1$ = true; }
begin { stmt(2); s2$ = true; }
begin { stmt(3); s3$ = true; }
s1$; s2$; s3$;
}