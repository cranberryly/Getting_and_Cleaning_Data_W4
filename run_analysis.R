## Getting Data
setwd("~/Desktop/cousera_getting_data/w4")
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- file.path(getwd(),"dataset.zip")
download.file(url,f)

## Training Data
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
trains <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Test Data
testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
tests <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Merges the training and the test sets to create one data set
mergex <- rbind(trainx,testx)
mergey <- rbind(trainy,testy)
merges <- rbind(trains,tests)

## Extracts only the measurements on the mean and standard deviation for each measurement
features <- read.table("./UCI HAR Dataset/features.txt")
head(features)
MeanSTD <- grep("mean\\(\\)|std\\(\\)", features[, 2])
length(MeanSTD)
mergex <- mergex[,MeanSTD]
names(mergex) <- gsub("\\(\\)", "", features[MeanSTD, 2]) # remove "()"
names(mergex) <- gsub("mean", "Mean", names(mergex)) # capitalize M
names(mergex) <- gsub("std", "Std", names(mergex)) # capitalize S
names(mergex) <- gsub("-", "", names(mergex)) # remove "-" in column names

## Uses descriptive activity names to name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity[, 2] <- tolower(gsub("_", "", activity[, 2])) # lowercase and remove "_"
substr(activity[2, 2], 8, 8) <- toupper(substr(activity[2, 2], 8, 8)) # capitalize the first letter of "upstairs"
substr(activity[3, 2], 8, 8) <- toupper(substr(activity[3, 2], 8, 8)) # capitalize the first letter of "downstairs"
activityLabel <- activity[mergey[, 1], 2]
mergey[, 1] <- activityLabel
names(mergey) <- "activity"

## Appropriately labels the data set with descriptive variable names
names(merges) <- "subject"
cleanedData <- cbind(merges, mergey, mergex)
dim(cleanedData) 
write.table(cleanedData, "merged_data.txt")

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject
subjectLen <- length(table(merges)) # 30
activityLen <- dim(activity)[1] # 6
columnLen <- dim(cleanedData)[2] # 68
result <- matrix(NA, nrow=subjectLen*activityLen, ncol=columnLen) 
result <- as.data.frame(result)
colnames(result) <- colnames(cleanedData)
row <- 1
for(i in 1:subjectLen) {
  for(j in 1:activityLen) {
    result[row, 1] <- sort(unique(merges)[, 1])[i]
    result[row, 2] <- activity[j, 2]
    bool1 <- i == cleanedData$subject
    bool2 <- activity[j, 2] == cleanedData$activity
    result[row, 3:columnLen] <- colMeans(cleanedData[bool1&bool2, 3:columnLen])
    row <- row + 1
  }
}
head(result)
write.table(result, "tidy_data.txt")



## Check
data <- read.table("./tidy_data.txt")
data[1:10, 1:8]

