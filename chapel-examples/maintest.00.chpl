use Regexp;
use Time;
use Random;

proc TreeAccumulate(hh : int, p1, p2 : []int, node1, node2 : int) {
  // Compute the distance between node1 and node2
  var rr = sqrt (5);
  var rmin = rr - (node1+node2);
  begin smuAccumulate(hh, p1, p2, node1, node2);
}


proc smuAccumulate(hh : int, p1, p3  :[]int, node1,node2 : int){
  var final = hh * p1[0] + p3[0] - node1 + node2;
}

proc main(){
  var hh : int;
  var pp1 : [4] int; 
  var pp2 : [4] int; 
  var root1 : int;
  var root2 :int;
  sync TreeAccumulate(hh, pp1, pp2, root1, root2);
}