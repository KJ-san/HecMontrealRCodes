library(dplyr)
library(ISLR) 
myData <- data.frame(College)
View(myData)
str(myData)

myData <- myData%>% mutate(Elite = case_when(myData$Top10perc > 50 ~ "Yes",
                                             TRUE ~ "No"))

boxplot(Outstate~Private,
        data=myData,
        xlab="Private",
        ylab="Outstate")