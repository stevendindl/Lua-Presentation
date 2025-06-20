# Python Recursive Fibonacci

def nth_fibonacci(n):
  
    # Base case: if n is 0 or 1, return n
    if n <= 1:
        return n
      
    # Recursive case: sum of the two preceding Fibonacci numbers
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

n = 45
result = nth_fibonacci(n)
print(result)



'''
Via GeeksforGeeks
https://www.geeksforgeeks.org/program-for-nth-fibonacci-number/
'''
