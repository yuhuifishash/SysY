//#include "sylib.h"
int n = 1400;
int seq[1400];
int table[1400][1400];

void kernel_nussinov(int n, int seq[], int table[][1400])
{
    int i, j, k;
    i = n - 1;
    while (i >= 0)
    {
        j = i + 1;
        while (j < n)
        {
            if (j - 1 >= 0)
            {
                if (table[i][j] < table[i][j - 1])
                {
                    table[i][j] = table[i][j - 1];
                }
            }
            if (i + 1 < n)
            {
                if (table[i][j] < table[i + 1][j])
                {
                    table[i][j] = table[i + 1][j];
                }
            }
            if (j - 1 >= 0 && i + 1 < n)
            {
                if (i < j - 1)
                {
                    int temp = 0;
                    if (((seq[i]) + (seq[j])) == 3)
                    {
                        temp = 1;
                    }
                    if (table[i][j] < table[i + 1][j - 1] + temp)
                    {
                        table[i][j] = table[i + 1][j - 1] + temp;
                    }
                }
                else
                {
                    if (table[i][j] < table[i + 1][j - 1])
                    {
                        table[i][j] = table[i + 1][j - 1];
                    }
                }
            }
            k = i + 1;
            while (k < j)
            {
                if (table[i][j] < table[i][k] + table[k + 1][j])
                {
                    table[i][j] = table[i][k] + table[k + 1][j];
                }
                k = k + 1;
            }
            j = j + 1;
        }
        i = i - 1;
    }
    i=0;
    while(i < n) {
        j = 0;
        while (j < n) {
            table[i][j] = table[i][j] % 10;
            j = j +1;
        }
        i = i +1;
    }
}

int main()
{
    getarray(seq);
    getarray(table);
    starttime();
    kernel_nussinov(n, seq, table);
    stoptime();
    putarray(n * n, table);
    return 0;
}
