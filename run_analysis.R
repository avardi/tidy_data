library(dplyr)

## Read train data
train_data <- read.table("train/X_train.txt")
features <- read.table("features.txt")
names(train_data) <- features$V2
## add activity & Subject info
train_data <- cbind(train_data, read.table("train/y_train.txt"))
colnames(train_data)[562] <- "activity"
##
train_data <- cbind(train_data, read.table("train/subject_train.txt"))
colnames(train_data)[563] <- "subject"
##
## Read test data & adda subject & activity info
test_data <- read.table("test/X_test.txt")
names(test_data) <- features$V2
test_data <- cbind(test_data, read.table("test/y_test.txt"))
colnames(test_data)[562] <- "activity"
test_data <- cbind(test_data, read.table("test/subject_test.txt"))
colnames(test_data)[563] <- "subject"

## Merge The tables tables
TT <- rbind(test_data, train_data)
## Discard un-needed columns
Ind <- c(grep("mean|std",features$V2), 562, 563)
TT <- TT[, Ind]
##
## group by subject & activities & compute the mean of all other columns

t1 <- TT %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# write table in txt format
write.table(t1, file = "tidy_data.txt", row.name=FALSE)

