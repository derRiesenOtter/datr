# 1
x_rand_A <- rnorm(10)

# 2
x_rand_B <- rnorm(10, 2, 0.1)
x_rand_C <- rnorm(10, -3, 2)
x_rand_D <- rnorm(10, 100, 1)
x_rand_E <- rnorm(10, 25, 3)
x_rand_F <- rnorm(10, 222, 122)
x_rand_G <- rnorm(10, 3234, 9)
x_rand_H <- rnorm(10, 4, 0.01)
x_rand_I <- rnorm(10, -39, 4)
x_rand_J <- rnorm(10, 50, 5)

# 3
sorted_x_rand_A <- sort(x_rand_A)
sorted_x_rand_A

positive_x_rand_A <- sorted_x_rand_A[sorted_x_rand_A > 0]
positive_x_rand_A

# 4
plant_heights <- data.frame(A = x_rand_A, B = x_rand_B, C = x_rand_C, D = x_rand_D, E = x_rand_E, F = x_rand_F, G = x_rand_G, H = x_rand_H, I = x_rand_I, J = x_rand_J)

# 5
boxplot(plant_heights)

# 6
Map(function(x) x + pi, x_rand_A)

# 7a
for (col_name in names(plant_heights)) {
  var_name <- paste0("for_sum_", col_name)
  assign(var_name, sum(plant_heights[col_name]))
}

for_sum_A

# 7b
vector_of_sums <- lapply(plant_heights, sum)

unlisted_vector_of_sums <- unlist(vector_of_sums)

for (entry in seq_along(unlisted_vector_of_sums)) {
  var_name <- paste0("lapply_sum_", names(unlisted_vector_of_sums)[entry])
  assign(var_name, unname(unlisted_vector_of_sums[entry]))
}

# 7c
vec_of_sums <- apply(plant_heights, 2, sum)

for (entry in seq_along(vec_of_sums)) {
  var_name <- paste0("apply_sum_", names(vec_of_sums)[entry])
  assign(var_name, unname(vec_of_sums[entry]))
}

# 8
mean_all_values <- mean(as.vector(as.matrix(plant_heights)))
sd_all_values <- sd(as.vector(as.matrix(plant_heights)))

outlier_function <- function(i) {
  Filter(function(x) (x > mean_all_values + 2 * sd_all_values | x < mean_all_values - 2 * sd_all_values), plant_heights[[i]])
}

for (col_name in names(plant_heights)) {
  print(paste("outliers in ", col_name, ":"))
  if (length(outlier_function(col_name)) == 0) {
    print("none")
  } else {
    print(outlier_function(col_name))
  }
}
