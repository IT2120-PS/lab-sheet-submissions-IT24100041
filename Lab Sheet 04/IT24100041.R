setwd("C:\\Users\\it24100041\\Desktop\\IT24100041\\Lab 04-20250821")
getwd()

#Q1                         
branch_data <-read.table("Exercise.txt",header = TRUE,sep = ",")
head(branch_data)

#Q2,Q3
boxplot(branch_data$Sales_X1,
        main="Boxplot for sales",
        ylab="Sales",
        col="lightblue",
         horizontal=FALSE)

#Q4
cat("fIVE-Number Summery for Advertising:\n")
print(summary(branch_data$Advertising_X2))

cat("IQR for Advertising:\n ")
print(IQR(branch_data$Advertising_X2))

#Q5
find_outliers<-function(x){
  Q1<-quantile(x,0.25)
  Q3<-quantile(x,0.75)
  IQR_val<-Q3-Q1
lower_bound<-Q1-1.5*IQR_val
upper_bound<-Q3+1.5*IQR_val
x[x<lower_bound | x>upper_bound]
}

outliers_years<-
  find_outliers(branch_data$Years_X3)
  cat("Outliers in Years(Years_x3")
  print(outliers_years)
  
  
  