setwd("C:\\Users\\USER\\Desktop\\IT24100041")

#1
#1.1
#binomial distribution

#1.2
dbinom(40,44,0,92)
#1.3
pbinom(35,44,0.92,lower.tail = TRUE)
#1.4
1-pbinom(37,44,0.92,lower.tail = TRUE)
pbinom(37,44,0.92,lower.tail = TRUE)
#1.5
pbinom(42,44,0.92,lower.tail = TRUE)-pbinom(39,44,0.92,lower.tail = TRUE)

#2
#2.1
#Number of babies born in a hospital on a given day

#2.2
#position distribution
#here,random varible x has position distribution with lamba 5
#2.3
dpois(6,5)

#2.4
ppois(6,5,lower.tail = FALSE)

#Exercise 

lambda <- 12  

cat("X follows a Poisson distribution: X ~ Poisson(lambda = 12)\n")

prob_15_calls <- dpois(15, lambda)
cat("Probability of receiving exactly 15 calls in an hour: ", prob_15_calls, "\n")

n <- 50    # Number of students
p <- 0.85  # Probability of passing

# i. Distribution of X
cat("X follows a Binomial distribution: X ~ Binomial(n = 50, p = 0.85)\n")

# ii. Probability that at least 47 students passed the test
prob_at_least_47 <- 1 - pbinom(46, n, p)
cat("Probability that at least 47 students passed the test: ", prob_at_least_47, "\n")



Breaks<- round(histogram$Breaks)
freq<-histogram$count
mids<-histogram$mids


Breaks<-round(histogram$breaks)
freq<-histogram$counts
mids<-histograms$ids

hist<-hist(X1,main="Histogram>>>",Breaks=freq(10,20,length=8),right=FALSE)

x<-c(1,2,3)
y<-c(4,5,6)

plot(x,y,type="n")
polygon(x,y,)