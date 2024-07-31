float advance(int n, float x, float y, float z, float dt)
{
  int i = 0, j = 1, k = 0;
  float vx = 1.6;
  float vy = 7.6;
  float vz = 6.9;
  float m1 = 9.5;
  float res;
  
  while(i < n) {
    float dx = x - vx;
    float dy = y - vy;
    float dz = z - vz;
    float m = dt / (dx * dy * dz);
    while (j < n) {
      x =x- dx * m1 * m;
      y =y- dy * m1 * m;
      z =z- dz * m1 * m;
      j=j+1;
    }
    i=i+1;
  }
   while(k < n) {
    x =x+ dt * vx;
    y =y+ dt * vy;
    z =z+ dt * vz;
    k=k+1;
  }
  res = x + y - z;
  return res;
}

int main()
{
  int n = getint();
  int i = 1;
  float x = 4.8;
  float y = 1.1;
  float z = 1.0;
  float res; 
  starttime();
  res = advance(n, x, y, z, 0.01);
  stoptime();
  putfloat(res);
  return 0;
}
