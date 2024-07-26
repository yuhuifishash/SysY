//large loop and large array caculate
int COUNT = 500000;

float loop(float x[], float y[], int length) {
   int i = 0;
   float accum = 0.0;
   while (i < length) {
       accum = accum + x[i] * y[i];
       i = i + 1;       
   }
   return accum;
}

int main() {
    int i = 0, j = 0;
    float x[6000];
    float y[6000];
    int len=6000;
    float total = 0.0;
    float a = 0.0;
    float b = 1.0;
    starttime();
    while ( i < COUNT) {
        if (i % 10) {
            a = 0.0;
            b = 1.0;
        } else {
            a = a + 0.1;
            b = b + 0.2;
        }
	while ( j < len) {
	    x[j] = a + j;
            y[j] = b + j;
	    j = j + 1;
	}
	total = total + loop(x, y, len);
	i = i + 1;
    }
    stoptime();
    int final=total - 36239413625225216.0000001;
    if (final <=0.000001 && final>= -0.000001) {
        putint(10);
	return 0;
    }
    else {
        putint(1);
	return 1;
    }

}
