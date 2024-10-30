# 1
one_hundred <- rnorm(100, 5, 1)
two_hundred <- rnorm(100, 4, 1)
three_hundred <- rnorm(100, 3, 1)
four_hundred <- rnorm(100, 6, 1)
five_hundred <- rnorm(100, 7, 1)
six_hundred <- rnorm(100, 5, 1)
seven_hundred <- rnorm(100, 5, 2)
eight_hundred <- rnorm(100, 4, 2)
nine_hundred <- rnorm(100, 3, 2)
ten_hundred <- rnorm(100, 7, 2)

one_thousand <- rnorm(1000, 5, 1)

# 1a
hist_one_hundred <- hist(one_hundred, plot = FALSE)
hist_two_hundred <- hist(two_hundred, plot = FALSE)
hist_three_hundred <- hist(three_hundred, plot = FALSE)
hist_four_hundred <- hist(four_hundred, plot = FALSE)
hist_five_hundred <- hist(five_hundred, plot = FALSE)
hist_six_hundred <- hist(six_hundred, plot = FALSE)
hist_seven_hundred <- hist(seven_hundred, plot = FALSE)
hist_eight_hundred <- hist(eight_hundred, plot = FALSE)
hist_nine_hundred <- hist(nine_hundred, plot = FALSE)
hist_ten_hundred <- hist(ten_hundred, plot = FALSE)

hist_one_thousand <- hist(one_hundred, plot = FALSE)
hist_one_thousand

# the breaks, the counts for each bin, the middle of each bin,
# the name, equidist (boole), class

# 1b
plot(hist_one_hundred)

plot(hist_two_hundred)

plot(hist_three_hundred)

plot(hist_four_hundred)

plot(hist_five_hundred)

plot(hist_six_hundred)

plot(hist_seven_hundred)

plot(hist_eight_hundred)

plot(hist_nine_hundred)

plot(hist_ten_hundred)

plot(hist_one_thousand)

# some better some worse

# 1c
hist(one_hundred, breaks = 20)

hist(one_thousand, breaks = 50)

# 1d
density(one_hundred)

plot(density(one_hundred))

plot(density(two_hundred))

plot(density(three_hundred))

plot(density(four_hundred))

plot(density(one_thousand))

plot(density(one_thousand, kernel = "cosine"))

plot(density(one_thousand, kernel = "rectangular"))

plot(density(one_thousand, kernel = "triangular"))

plot(density(one_thousand, bw = "SJ"))

# 2

red_die_throws <- c(3, 6, 4, 1, 1)
blue_die_throws <- c(1, 1, 4, 2, 1)

pdf("Two_dice_comparison_experiment_boxplot.pdf", height = 14, width = 14)
boxplot(
  list(red_die = red_die_throws, blue_die = blue_die_throws),
  main = paste(
    "The distribution of numbers of sampling (throwing) two dice (red and blue)",
    "- Mean values in darkgreen diamonds.",
    "Would you assume that the red die throws higher numbers than the blue?",
    sep = "\n"
  ),
  border = c("red", "blue")
)
points(1:2, c(
  mean(red_die_throws),
  mean(blue_die_throws)
), pch = 18, cex = 3, col = "darkgreen")
dev.off()

# boxplot suggests, that there is a significant difference, but
# but there are too few samples

# 2a
all_combinations <- expand.grid(1:6, 1:6, 1:6, 1:6, 1:6)

# 2b
mean <- apply(all_combinations, 1, mean)
all_combinations_with_mean <- cbind(all_combinations, mean)

# 2c
di <- function(x) {
  abs(x[[1]] - x[[2]])
}

all_differences_of_two_means <- combn(all_combinations_with_mean[["mean"]], 2, FUN = di)

# 2d
hist(all_differences_of_two_means, breaks = 100)

# 2e
diff_red_blue <- abs(mean(red_die_throws) - mean(blue_die_throws))
diff_red_blue

# 2f
likelihood <- length(all_differences_of_two_means[all_differences_of_two_means >= diff_red_blue]) / length(all_differences_of_two_means)

likelihood

# 2g
# keep the null hypothesis

t.test(red_die_throws, blue_die_throws)
