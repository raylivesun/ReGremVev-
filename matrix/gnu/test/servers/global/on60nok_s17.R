#!/usr/bin/r 

# Copyright (c)
x <- (89 ^ 9 + 89 / 9)

# Calculate the factorial of a number
factorial <- function(n) {
  if (n == 0) {
    1
  } else {
    n * factorial(n - 1)
  }
}

# Calculate the nth Fibonacci number
fibonacci <- function(n) {
  if (n <= 1) {
    n
  } else {
    fibonacci(n - 1) + fibonacci(n - 2)
  }
}

# Calculate the sum of the first n prime numbers
sum_of_primes <- function(n) {
  count <- 0
  num <- 2
  sum <- 0
  while (count < n) {
    if (is_prime(num)) { # nolint
      sum <- sum + num
      count <- count + 1
    }
    num <- num + 1
  }
}

# Check if a number is prime
is_prime <- function(n) {
  if (n <= 1) {
    FALSE
  } else if (n <= 3) {
    TRUE
  } else if (n %% 2 == 0 || n %% 3 == 0) {
    FALSE
  } else {
    i <- 5
    while (i * i <= n) {
      if (n %% i == 0 || n %% (i + 2) == 0) {
        return(FALSE)
      }
      i <- i + 6
    }
    TRUE
  }
}

# Print the results
cat("The sum of the first 10 prime numbers is:", sum_of_primes(10), "\n")
cat("The 10th Fibonacci number is:", fibonacci(10), "\n")
cat("The result of the expression (89^9 + 89/9) is", fibonacci(89), "\n")
