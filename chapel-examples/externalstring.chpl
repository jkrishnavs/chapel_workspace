proc stmt(x:int){
     writeln(x);
}

proc main(){
     var s1$, s2$, s3$: single bool;
     var str: string;

     // str = "Hello World";

     // stringprint(str);
     begin with (ref str){ 
       stmt(1); s1$ = true; 
     }

     begin{ 
       stmt(3);
     }
}
