
# set working directory and load dplyr library
setwd("~/Desktop/Data Science/GetandCleanData/UCI HAR Dataset")
library(dplyr)

#load features as cols
cols <- read.table("features.txt")

#load X and y data, using cols as column names
X_train <- read.table("train/X_train.txt", col.names = cols$V2)
X_test <- read.table("test/X_test.txt", col.names = cols$V2)
Y_train <- read.table("train/Y_train.txt", col.names = "activity")
Y_test <- read.table("test/Y_test.txt", col.names = "activity")

#load subject data
sub_train <- read.table("train/subject_train.txt", col.names = "subject")
sub_test <- read.table("test/subject_test.txt", col.names = "subject")

#convert X, Y and subject data to tbl_df
X_train <- tbl_df(X_train)
X_test <- tbl_df(X_test)
Y_train <- tbl_df(Y_train)
Y_test <- tbl_df(Y_test)
sub_train <- tbl_df(sub_train)
sub_test <- tbl_df(sub_test)

#select mean and std from X data
mean_X_train <- select(X_train, contains("mean"))
mean_X_test <- select(X_test, contains("mean"))
std_X_train <- select(X_train, contains("std"))
std_X_test <- select(X_test, contains("std"))

#combine data frames with columns: mean, std, subject, activity
data_train <- bind_cols(sub_train,
                        Y_train, 
                        mean_X_train, 
                        std_X_train)
data_test <- bind_cols(sub_test,
                       Y_test,
                       mean_X_test,
                       std_X_test)

#combine train and test
data <- bind_rows(data_train, data_test)
data <- select(data, -contains("meanFreq"))
data <- select(data, -contains("gravityMean"))


# decode activity column using descriptive activity names in new column called activity
attach(data)
data$activity[activity == 1] <- "Walking"
data$activity[activity == 2] <- "Upstairs"
data$activity[activity == 3] <- "Downstairs"
data$activity[activity == 4] <- "Sitting"
data$activity[activity == 5] <- "Standing"
data$activity[activity == 6] <- "Laying"
detach(data)

#use summarise_each to create new data frame with mean for each subject and activity
data <- group_by(data, subject, activity)
output <- summarise_each(data, funs(mean))

write.table(output, "output.txt", row.name=FALSE)
