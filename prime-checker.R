## prime or not

n = 97

factors <- c(1)

for (i in 2:(n/2 + 1)) {
  if (n %% i == 0) {
    factors <- append(factors, i)
  }
}

if (length(factors) == 1) {
  print("it is a prime")
  print(factors)
} else {
  print("not a prime")
  print(factors)
}

