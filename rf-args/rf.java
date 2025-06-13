// Java Recursive Fibonacci

class RF {

    // Function to calculate the nth Fibonacci number using recursion
    static long nthFibonacci(long n){

        // Base case: if n is 0 or 1, return n
        if (n <= 1) {
            return n;
        }

        // Recursive case: sum of the two preceding Fibonacci numbers
        return nthFibonacci(n - 1) + nthFibonacci(n - 2);
    }

    static boolean isDigit(String arg) {
        try {  
            Double.parseDouble(arg);  
            return true;
        } catch(NumberFormatException e){  
            return false;  
        }  
    }

    public static void main(String[] args) {

        if(args.length != 1 || !isDigit(args[0])) {
            System.out.println("Improper args: java RF <int>");
            System.exit(0);
        }

        long n = Long.parseLong(args[0]);
        long result = nthFibonacci(n);
        System.out.println(result);
    }
}

// Learned that arg does not include file name, arg[0] is the first argument