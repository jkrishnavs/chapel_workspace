proc test1( ) {     
   var x1: int = 10;     
   var done$: sync bool;     
   begin with (ref x1){      
      test2(x1);
      // No issue with this call
      var x2: int = 5;
      var done1$: sync bool;
      begin with (ref x1){
      // can create issue with this call.
      	 test2(x1);
      	 done1$ = true;       
      }  
      test2(x1);
      done$ = true;
      done1$;     
   }
    done$; 
} 

proc test2(ref x1) {     
      writeln(x1); 
}  

proc main(){      
    test1(); // --> CALL 1      
}