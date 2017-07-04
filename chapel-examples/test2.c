#include<stdio.h>
#include<stdlib.h>
typedef struct Pt{
  int x;
  int y;
}pt;
int main(){
  pt *p = (pt*)malloc(sizeof(pt));
  p->x = 1;
  p->y=2;
  printf("The value of p is %d %d\n",p->x,p->y);
  free(p);
  printf("The value of p is %d %d\n",p->x,p->y);

}
