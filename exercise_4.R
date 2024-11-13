# 1
ten <- rnorm(10, 5, 1)
hundred <- rnorm(100, 7, 2)
thousand <- rnorm(1000, 5, 1)

# 1a
ten_hist <- hist(ten, plot = FALSE)
hundred_hist <- hist(hundred, plot = FALSE)
thousand_hist <- hist(thousand, plot = FALSE)
thousand_hist

# the breaks, the counts for each bin, the middle of each bin,
# the name, equidist (boole), class

# 1b
plot(ten_hist)

plot(hundred_hist)

plot(thousand_hist)

# some better some worse

# 1c
hist(hundred, breaks = 10)

hist(thousand, breaks = 50)

# 1d
density(hundred)

plot(density(hundred))

plot(density(thousand))

plot(density(thousand, kernel = "cosine"))

plot(density(thousand, kernel = "rectangular"))

plot(density(thousand, kernel = "triangular"))

plot(density(thousand, bw = "SJ"))

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
dice <- 1:6
all_combinations <- expand.grid(
  dice_1 = dice, dice_2 = dice,
  dice_3 = dice, dice_4 = dice, dice_5 = dice
)

# 2b
mean <- apply(all_combinations, 1, mean)
all_combinations$mean <- mean
head(all_combinations)

# 2c
abs_diff <- function(x) {
  abs(x[[1]] - x[[2]])
}

all_differences_of_two_means <- combn(all_combinations[["mean"]], 2, FUN = abs_diff)

head(all_differences_of_two_means)

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
