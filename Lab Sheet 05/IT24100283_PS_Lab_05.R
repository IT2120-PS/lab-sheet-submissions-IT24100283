#Q1
setwd("C:\\Users\\vishw\\Downloads\\Lab 05-20250826")
DeliveryTimes <- read.table("Exercise - Lab 05.txt", 
                            header = TRUE, sep = "", 
                            stringsAsFactors = FALSE)
head(DeliveryTimes)

#Q2
names(DeliveryTimes) <- c("DeliveryTime")
hist(DeliveryTimes$DeliveryTime,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Times (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightblue",
     border = "black")

#Q3
#If it is symmetric, it looks like a normal distribution.
#If it is skewed right, it more values on the lower side with a long right tail.
#If it is skewed left, it more values on the higher side with a long left tail.

#Q4
names(DeliveryTimes)
x <- as.numeric(DeliveryTimes[[1]])
hist(x,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Times (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightblue",
     border = "black")

h <- hist(x, breaks = seq(20, 70, length.out = 10), right = FALSE, plot = FALSE)
cf <- cumsum(h$counts)

plot(h$breaks[-1], cf, type = "o",
     main = "Ogive (Cumulative Frequency polygon)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     pch = 16)
points(h$breaks[1], 0, pch = 16)
lines(c(h$breaks[1], h$breaks[-1]), c(0, cf))
