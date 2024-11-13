# 1

control_expression <- rnorm(100, 10, 2)
drought_expression <- rnorm(100, 50, 10)

# 1a
plot(control_expression, drought_expression, xlim = c(0, 20), ylim = c(0, 80))

boxplot(control_expression, drought_expression)

# no correlation
# the drought_expression is 5 times higher, surprise
# depends on what i want to do
# if i want to compare the relative expressions i need it
# most genes should have a similar expression
# experimental error or weird behaviour of the plant

# 1b
experiment_linear_regression <- lm(drought_expression ~ control_expression)

abline(experiment_linear_regression$coefficients)
# subtract the intercept

# 1c
drought_expression_normalized <- (drought_expression - experiment_linear_regression$coefficients[1]) / experiment_linear_regression$coefficients[2]
drought_expression_normalized_sd <- drought_expression_normalized / sd(drought_expression_normalized)
control_expression_sd <- (control_expression / sd(control_expression)) - mean(control_expression)

plot(control_expression_sd, drought_expression_normalized_sd, xlim = c(0, 20))

experiment_linear_regression_norm <- lm(drought_expression_normalized_sd ~ control_expression_sd)
abline(experiment_linear_regression_norm$coefficients)

boxplot(control_expression_sd, drought_expression_normalized_sd)

# 2
urn_model <- c(rep("blue", 10), rep("green", 7), rep("red", 3))
urn_model

# 2a
# Event Space: {{blue}, {green}, {red}}
# Random Variable: for every color one X that is 1 if the color is chosen

b_expected_value <- sum(urn_model == "blue") / length(urn_model)
g_expected_value <- sum(urn_model == "green") / length(urn_model)
r_expected_value <- sum(urn_model == "red") / length(urn_model)

b_variance <- sum(((urn_model == "blue") - b_expected_value)^2) / length(urn_model)
g_variance <- sum(((urn_model == "green") - g_expected_value)^2) / length(urn_model)
r_variance <- sum(((urn_model == "red") - r_expected_value)^2) / length(urn_model)

b_skewness <- (sum(((urn_model == "blue") - b_expected_value)^3) / length(urn_model)) /
  (sum(((urn_model == "blue") - b_expected_value)^1.5) / (length(urn_model) - 1))

# 2a alternative
# blue 1, green 2, red 3
expected_value <- ((
  10 +
    7 * 2 +
    3 * 3
) / length(urn_model)
)

variance <- ((
  10 * (1 - expected_value)^2 +
    7 * (2 - expected_value)^2 +
    3 * (3 - expected_value)^2
) / length(urn_model))

skewness <- ((
  10 * ((1 - expected_value) / variance^0.5)^3 +
    7 * ((2 - expected_value) / variance^0.5)^3 +
    3 * ((3 - expected_value) / variance^0.5)^3
) / length(urn_model))


# 2b
# not much, should I have done it with one random variable?
# would not help, the wavelength?

# 2c
# with replacement multinomial distribution
dmultinom(c(5, 3, 2), size = 10, prob = c(0.5, 0.35, 0.15))

# without helping function
factorial(10) / (factorial(5) * factorial(3) * factorial(2)) * 0.5^5 * 0.35^3 * 0.15^2

dmultinom(c(7, 3, 0), size = 10, prob = c(0.5, 0.35, 0.15))

# without replacement: multivariate hypergeometric distribution
require("extraDistr")

dmvhyper(c(5, 3, 2), c(10, 7, 3), 10)

# without helping function
choose(10, 5) * choose(7, 3) * choose(3, 2) / choose(20, 10)

dmvhyper(c(7, 3, 0), c(10, 7, 3), 10)

# 2d
# with replacement
1 - pbinom(6, 10, .5)

# without helping function
res <- (
  choose(10, 3) * (0.5)^3 * (0.5)^7 +
    choose(10, 2) * (0.5)^10 +
    choose(10, 1) * (0.5)^10 +
    choose(10, 0) * (0.5)^10
)
res

# without replacement
sum(dhyper(7:10, 10, 10, 10))

# without helping function
res <- (
  choose(10, 3) * choose(20 - 10, 10 - 3) / choose(20, 10) +
    choose(10, 2) * choose(20 - 10, 10 - 2) / choose(20, 10) +
    choose(10, 1) * choose(20 - 10, 10 - 1) / choose(20, 10) +
    choose(10, 0) * choose(20 - 10, 10 - 0) / choose(20, 10)
)
res

# 3
package.skeleton("test")
