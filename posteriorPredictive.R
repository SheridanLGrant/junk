# Weird data generation
theta <- 1/4
reps <- 500
n <- 10
y <- replicate(reps, c(n,n)*runif(1)*runif(1))

# Model
alpha <- 1000
beta <- 1000
postTheta <- (sum(y) + alpha) / (n*length(y) + alpha + beta)

# New data
yTilde <- rbinom(reps*2, n, postTheta)

# Posterior Predictive Check
hist(y)
hist(yTilde)
sd(y)
sd(yTilde)
qqplot(y, yTilde)
