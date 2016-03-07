#include <stdio.h>
#include <stdlib.h>

int* func(){
  int p;
  p = 5;
  return &p;
}

main(){
  int *p,*q;
  {
    int a;
  }
  p = (int*) malloc(sizeof(int));
  q = func();
  *p=a;
  *q = 4;

}
