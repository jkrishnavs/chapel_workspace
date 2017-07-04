#include <stdio.h>
#include <stdlib.h>
int* func(){
  int p;
  p = 5;
  return &p;
}
main(){
  int *p;
  p = func();
}
