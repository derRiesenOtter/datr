# 1

# 2

# 3
dice <- 1:6

sample(dice, 1)

two_dice <- expand.grid(die_1 = dice, die_2 = dice)

three_dice <- expand.grid(die_1 = dice, die_2 = dice, die_3 = dice)

two_dice_sum <- apply(two_dice, 1, sum)

three_dice_sum <- apply(three_dice, 1, sum)

table(two_dice_sum)

table(three_dice_sum)

# 4
calc_breaks <- function(x) {
  (min(x) - 0.5):(max(x) + 1)
}

boxplot(two_dice_sum)

hist(two_dice_sum, breaks = calc_breaks(two_dice_sum))

plot(density(two_dice_sum))

frequency_of_sums_2_dice <- as.vector(table(two_dice_sum))
sums_of_2_dice <- as.numeric(names((table(two_dice_sum))))
mean_of_2_dice <- mean(sums_of_2_dice)

plot(sums_of_2_dice, frequency_of_sums_2_dice, ylim = c(0, max(frequency_of_sums_2_dice)))
abline(v = mean_of_2_dice)
abline(v = mean_of_2_dice - sd(sums_of_2_dice), col = "brown")
abline(v = mean_of_2_dice + sd(sums_of_2_dice), col = "brown")

boxplot(three_dice_sum)

hist(three_dice_sum, breaks = calc_breaks(three_dice_sum))

plot(density(three_dice_sum))

frequency_of_sums_3_dice <- as.vector(table(three_dice_sum))
sums_of_3_dice <- as.numeric(names((table(three_dice_sum))))
mean_of_3_dice <- mean(sums_of_3_dice)

plot(sums_of_3_dice, frequency_of_sums_3_dice, ylim = c(0, max(frequency_of_sums_3_dice)))
abline(v = mean_of_3_dice)
abline(v = mean_of_3_dice - sd(sums_of_3_dice), col = "brown")
abline(v = mean_of_3_dice + sd(sums_of_3_dice), col = "brown")

# a
# no, see the plots, values closer to the mean are more likely

# b
# mean is the number of dice times the expected value for one dice
# the standard deviation acts similarly

# c
# central limit theorem
# the density plot looks a lot like the gaussian distribution

# 5
head(iris)

boxplot(iris[["Sepal.Length"]] ~ iris[["Species"]], col = rainbow(length(unique(iris[["Species"]]))))

# i guess the sepal length is infuluenced significantly by the species

# 6
library(ggplot2)

ggplot(iris, aes(Sepal.Width, fill = Species, colour = Species)) +
  stat_density(alpha = 0.1) +
  xlim(1, 5)

# the sepal width does not seem like it is influenced significantly by the species
