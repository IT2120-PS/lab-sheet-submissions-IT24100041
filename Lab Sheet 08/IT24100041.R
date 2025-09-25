setwd("C:\\Users\\it24100041\\Desktop\\IT24100041")
getwd()

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)

names(data)

names(data) <- c("Weight")

#1-Population mean & population SD
pop_mean <- mean(data$Weight)
pop_sd   <- sd(data$Weight)

cat("Population Mean =", pop_mean, "\n")
cat("Population SD   =", pop_sd, "\n")

#2-Draw 25 random samples of size 6 (with replacement)
set.seed(123)

samples <- replicate(25, sample(data$Weight, 6, replace=TRUE))

s_means <- apply(samples, 2, mean)
s_sds   <- apply(samples, 2, sd)

sample_results <- data.frame(
  Sample = 1:25,
  Mean   = s_means,
  SD     = s_sds
)
print(sample_results)


#3- Mean & SD of the 25 sample means
mean_of_sample_means <- mean(s_means)
sd_of_sample_means   <- sd(s_means)

cat("\nMean of Sample Means =", mean_of_sample_means, "\n")
cat("SD of Sample Means   =", sd_of_sample_means, "\n")

cat("\nPopulation Mean =", pop_mean, "\n")
cat("Theoretical SE   =", pop_sd/sqrt(6), "\n")
