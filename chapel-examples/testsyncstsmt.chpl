use Time;
proc tester(ref x){

  begin{ writeln(x);}
  begin{ writeln(x);}
  begin{ writeln(x);}
  begin{ writeln(x);}
  begin with (ref x){
    Time.sleep(3);
    begin with (ref x){
      Time.sleep(2);
      write(x);
    }
  }
  begin{ writeln(x);}
  begin{ writeln(x);}
  begin{ writeln(x);}

}

proc write(ref x){
  writeln(x);
}

proc main(){
  var x : int = 5;
  sync tester(x);
}