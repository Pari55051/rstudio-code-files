# determining a perfect number
n = 496

d <- 1:(n-1)
sum(d[n%%d == 0])

