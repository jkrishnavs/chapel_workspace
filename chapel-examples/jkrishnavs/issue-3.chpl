proc test1(x: int ) {     
   var x1: int = x;     
   var done$: sync bool;     
   begin with (ref x1){      
      test2(x1);  
      if(x1 % 2) then             
	done$ = true; // ---> SYNC LINE     
   }
   if(x1 % 2) then    
     done$; 
   begin with (ref x1){      
      test2(x1);  
      done$ = true; // ---> SYNC LINE     
   }
   done$;
} 

proc test2(ref x1) {     
      writeln(x1); 
}  

proc main(){      
    test1(1); // --> CALL 1      
    test1(2); // --> CALL2 
}