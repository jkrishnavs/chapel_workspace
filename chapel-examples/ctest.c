#include<stdio.h>

int* foo(){
  int *p,q;
  p = &q;
  q = 5;
  return p;
}

int main(){
  int *x;
  x = foo();
  int  i;
  int a[100];
  for(i = 0;i<100;i++){
    a[i] = *x - 100;
    printf("%d %d\n",a[i],*x);
  }
}
