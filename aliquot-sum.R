# num = as.integer(readline(prompt = "Enter a number: "))
num = 28

divisorList <- function (n) {
  divisors <- c()
  for (i in 1:(n-1)) {
    if (n %% i == 0) {
      divisors <- append(divisors, i)
    }
  }
  divisors
}

print(sum(divisorList(num)))
