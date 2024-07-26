//#include "sylib.h"
int n = 1400;
int A[1400][1400];
int b[1400];
int x[1400];
int y[1400];

void kernel_ludcmp(int n,int A[][1400],int b[],int x[],int y[])
{
  int i, j, k, w;
  i = 0;
  while (i < n) {
    j = 0;
    while (j < i) {
       w = A[i][j];
       k = 0;
       while (k < j) {
          w = w - A[i][k] * A[k][j];
          k = k +1;
       }
        A[i][j] = w / A[j][j];
      j = j +1;
    }
   j = i;
   while (j < n) {
       w = A[i][j];
       k = 0;
       while (k < i) {
          w = w - A[i][k] * A[k][j];
          k = k +1;
       }
       A[i][j] = w;
    j = j +1;
   }
    i = i +1;
  }
  i = 0;
  while (i < n) {
     w = b[i];
     j = 0;
     while (j < i) {
        w = w - A[i][j] * y[j];
        j = j +1;
     }
     y[i] = w;
     i = i +1;
  }
  i = n -1;
  while (i >=0) {
     w = y[i];
     j = i + 1;
     while (j < n) {
        w = w - A[i][j] * x[j];
        j = j+1;
     }
     x[i] = w / A[i][i];
     i = i -1;
  }
}


int main()
{
  getarray(A);
  getarray(b);
  getarray(x);
  getarray(y);
  starttime();
  kernel_ludcmp (n, A, b, x, y);
  stoptime();
  putarray(n, x);
  return 0;
}
