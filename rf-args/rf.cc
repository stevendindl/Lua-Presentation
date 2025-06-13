// C++ Recursive Fibonacci

#include <iostream>
#include <string>
using namespace std;

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
        cout << "Improper args: ./rf <int>" << endl;
        return 1;
    }

    int n = stoi(argv[1]);
    long result = nthFibonacci(n);
    cout << result << endl;

    return 0;
}

/*
Via GeeksforGeeks
https://www.geeksforgeeks.org/program-for-nth-fibonacci-number/
*/
