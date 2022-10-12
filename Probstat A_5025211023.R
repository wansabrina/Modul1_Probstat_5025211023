"----------No 1----------"
x = 3
p = 0.20
n = 10000

#No 1A
geom_dist <- dgeom(x, p)
paste("Peluang =", geom_dist)

#No 1B
mean <- mean(rgeom(n, p) == 3)
paste("Mean =", mean)

#No 1D
hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik')

#No 1E
rataan = 1 / p
paste("Rataan =", rataan)

varian = (1 - p) / (p ^ 2)
paste("Varian =", varian)

"----------No 2----------"
n = 20
p = 0.2
x = 4

#No 2A
binom_dist <- dbinom(x, n, p, log = FALSE)
paste("Peluang =", binom_dist)

#No 2B
interval = 1:n
plot(dbinom(interval, n, p), main = "Histogram Distribusi Binomial", type = 'h')

#No 2C
rataan = n * p
paste("Rataan =", rataan)

varian = n * p * (1 - p)
paste("Varian =", varian)

"----------No 3----------"
lambda = 4.5

#No 3A
x = 6
pois_dist <- dpois(x, lambda)
paste("Peluang =", pois_dist)

#No 3B
n = 365
hist(rpois(n, lambda))
mean(rpois(n, lambda)==6)

#No 3D
rataan = varian = lambda
paste("Rataan =", rataan)
paste("Varian =", varian)

"----------No 4----------"
x = 2
v = 10

#No 4A
chisq_dist <- dchisq(x, v)
paste("Peluang =", chisq_dis)

#No 4B
n = 100
hist(rchisq(n, v), main = "Histogram Chi-square")

#No 4C
rataan = v
paste("Rataan =", rataan)

varian = 2 * v
paste("Varian =", varian)

"----------No 5----------"
lambda = 3

#No 5A
exp_dist <- dexp(lambda)
paste("Peluang =", exp_dist)

#No 5B
set.seed(1)
hist(rexp(n = 10, lambda), main = "Histogram Exp Dist 10 bil random")
hist(rexp(n = 100, lambda), main = "Histogram Exp Dist 100 bil random")
hist(rexp(n = 1000, lambda), main = "Histogram Exp Dist 1000 bil random")
hist(rexp(n = 10000, lambda), main = "Histogram Exp Dist 10000 bil random")

#No 5C
N = 100

set.seed(1)
rataan = mean(rexp(N, lambda))
paste("Rataan =", rataan)

varian = sd(rexp(N, lambda))^2
paste("Varian =", varian)

"----------No 6----------"
n = 100
mean = 50
sd = 8

#No 6A
set.seed(1)
x = rnorm(n, mean, sd)
mean_data = mean(x)

X1 = floor(mean_data)
X2 = ceiling(mean_data)

zScore = (x - mean) / sd
zScore

plot(zScore)

#No 6B
breaks = 50
hist(x, breaks, main = "5025211023_Wan Sabrina Mayzura_Probstat_A_DNhistogram")

#No 6C
varian = sd^2
paste("Varian =", varian)
