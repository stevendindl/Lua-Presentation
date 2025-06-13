#include <stdio.h>

// Function to calculate the nth Fibonacci number using recursion
long nthFibonacci(long n) {
    // Base case: if n is 0 or 1, return n
    if (n <= 1){
        return n;
    }
    // Recursive case: sum of the two preceding Fibonacci numbers
    return nthFibonacci(n - 1) + nthFibonacci(n - 2);
}

int main() {
    long n = 45;
    long result = nthFibonacci(n);
    printf("%ld\n", result);
    return 0;
}
