// Java Recusive Fibonacci

class RF {

    // Function to calculate the nth Fibonacci number using recursion
    static long nthFibonacci(long n){
        // Base case: if n is 0 or 1, return n
        if (n <= 1) {
            return n;
        }
        // Recursive case: sum of the two preceding
        // Fibonacci numbers
        return nthFibonacci(n - 1) + nthFibonacci(n - 2);
    }

    public static void main(String[] args){
        long n = 50;
        long result = nthFibonacci(n);
        System.out.println(result);
    }
}

/*
Via GeeksforGeeks
https://www.geeksforgeeks.org/program-for-nth-fibonacci-number/
*/
