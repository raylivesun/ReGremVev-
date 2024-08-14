#!/usr/bin/r

# Copyright (c)
name <- "Carmen"
n1 <- 10
n2 <- 100
m <- 0.5

# Function to calculate the standard deviation
std_dev <- function(x) {
  variance <- sum((x - mean(x))^2) / length(x)
  sqrt(variance)
}

# Function to calculate the skewness
skewness <- function(x) {
  mean_diff <- mean(x) - median(x)
  skewness_value <- mean_diff / std_dev(x)
  skewness_value
}

# Function to calculate the kurtosis
kurtosis <- function(x) {
  excess_variance <- var(x) - mean(x)^2
  kurtosis_value <- excess_variance / (std_dev(x)^2) + 3
  kurtosis_value
}

# Generate random normal distribution with given parameters
set.seed(123)
normal_dist <- rnorm(n1, m, sqrt(n2))


# Calculate the descriptive statistics
mean_value <- mean(normal_dist)
median_value <- median(normal_dist)
mode_value <- names(which.max(table(normal_dist)))
range_value <- range(normal_dist)
variance_value <- var(normal_dist)
std_dev_value <- std_dev(normal_dist)
skewness_value <- skewness(normal_dist)
kurtosis_value <- kurtosis(normal_dist)

# Output the results
cat(paste("Name:", name, "\n"))
cat(paste("Number of observations (n1):", n1, "\n"))
cat(paste("Number of observations (n2):", n2, "\n"))
cat(paste("Mean:", mean_value, "\n"))
cat(paste("Median:", median_value, "\n"))
cat(paste("Mode:", mode_value, "\n"))
cat(paste("Range:", range_value[1], "-", range_value[2], "\
\n"))
cat(paste("Variance:", variance_value, "\n"))
cat(paste("Standard Deviation:", std_dev_value, "\n"))


# Output the skewness and kurtosis
cat(paste("Skewness:", skewness_value, "\n"))
cat(paste("Kurtosis:", kurtosis_value, "\n"))
