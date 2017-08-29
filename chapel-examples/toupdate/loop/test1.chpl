var A, B: [1..4] int;
var s$: sync bool;

begin {
  for i in 1..4 {
    A[i] = i;
    s$ = true;
  }
}

for i in 1..4 {
  s$;
  A[i] = A[i] * A[i];
  B[i] += A[i] + 1;
}

writeln(A);
writeln(B);
