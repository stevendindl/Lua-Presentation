#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

// Function to calculate the nth Fibonacci number using recursion
long nthFibonacci(long n) {
    // Base case: if n is 0 or 1, return n
    if (n <= 1){
        return n;
    }
    // Recursive case: sum of the two preceding Fibonacci numbers
    return nthFibonacci(n - 1) + nthFibonacci(n - 2);
}

int main(int argc, char* argv[]) {
    if(argc != 2 || !isdigit(*argv[1])) {
        printf("Improper args: ./rf-c <int> \n");
        return 1;
    }

    int n = atoi(argv[1]);
    long result = nthFibonacci(n);
    printf("%ld\n", result);
    return 0;
}
