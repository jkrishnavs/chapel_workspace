proc test1( ) {
  var x1: int = 10;        
  var done$: sync bool;  
  begin with (ref x1) {    
    writeln("line 1" + x1);                
    var done1$: sync bool;  
    begin with (ref x1){   
      writeln("line 2" + x1);    
      done1$ = true; // TS2
    } 
    writeln("line 3" + x1);   
    done$ = true;            // TS1
    done1$;                      //  TS2   
  } 
  done$;              // TS1
}   // stack variable x1 destroyed.

proc main(){
  test1();
}