// C++ Recursive Fibonacci

#include <iostream>
using namespace std;

// Function to calculate the nth Fibonacci number using recursion
int nthFibonacci(int n) {

    // Base case: if n is 0 or 1, return n
    if (n <= 1){
        return n;
    }

    // Recursive case: sum of the two preceding Fibonacci numbers
    return nthFibonacci(n - 1) + nthFibonacci(n - 2);
}

int main() {
    int n = 50;
    int result = nthFibonacci(n);
    cout << result << endl;

    return 0;
}

/*
Via GeeksforGeeks
https://www.geeksforgeeks.org/program-for-nth-fibonacci-number/
*/

