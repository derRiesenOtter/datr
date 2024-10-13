# 1b
# $ R --version (4.4.1)

# 1c

# 1d
# install.packages() my packages are managed by nix

# 1e

help(q)
# quits the R session

help(history)
# returns the history (used commands)
# most important arguments are max.show and pattern

help(savehistory)
# saves the history to a file
# most important argument is file

# 2a
numeric_var <- 3.14
typeof(numeric_var)

# 2b
integer_var <- 42L
typeof(integer_var)

# 2c
character_var <- "Hello"
typeof(character_var)

# 2d
logical_var <- TRUE
typeof(logical_var)

# 3
# A variable holds only one value
# a vector can hold many values
# even a single value can be considered a vector

# 4 set a value in a vector
numeric_vector <- c(1.1, 1.2, 1.3)
numeric_vector[2] <- 9
numeric_vector

# 5 append to a vector
numeric_vector <- c(1.1, 1.2, 1.3)
numeric_vector <- c(numeric_vector, 1.4)
numeric_vector

# 6
# NA stands for not available
vec_with_na <- c(1, 2, NA, 4)
is.na(vec_with_na)

# 7
# represents the absence of a value or an empty object
null_var <- NULL
is.null(null_var)

# 8a
my_function <- function(arg1, arg2) {
  arg1 + arg2
}

my_function(1, 2)

# 8b
my_function <- function(arg1 = 10, arg2 = 20) {
  arg1 + arg2
}

my_function()

# 8c
my_function <- function(...) {
  c(...)
}

my_function(1, 2, 3)

# 9
is_positive <- function(x) {
  x > 0
}

is_negative <- function(func, x) {
  !func(x)
}

is_negative(is_positive, -3)

# 10
help(summary)

help(head)

help(tail)

random_vector <- rnorm(20)

random_vector

summary(random_vector)

head(random_vector)

tail(random_vector)
