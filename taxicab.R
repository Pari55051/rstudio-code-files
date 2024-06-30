
# Taxicab: find k = a^3 + b^3 in more than one way

N <- 200

a = 1:N
b = 1:N

X = rep(a, each = N)
Y = rep(a, times = N)

d <- expand.grid(X = a, Y = b)
d <- subset(d, Y >= X)

S <- with(d, X^3 + Y^3)

dups <- which(duplicated(S))

S[67]
S[122]

subset(d, X^3 + Y^3 == 4104)

S[dups]

