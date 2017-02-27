#Set working directory

#Read dataset in
dataset_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataset_url, "smartphonesdata.zip")
unzip("smartphonesdata.zip", exdir = "smartphonesdata")

#Read in files
X_test <- read.table("smartphonesdata/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("smartphonesdata/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("smartphonesdata/UCI HAR Dataset/test/subject_test.txt")

X_train <- read.table("smartphonesdata/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("smartphonesdata/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("smartphonesdata/UCI HAR Dataset/train/subject_train.txt")

features <- read.table("smartphonesdata/UCI HAR Dataset/features.txt")
activity_labels <- read.table("smartphonesdata/UCI HAR Dataset/activity_labels.txt")

#Merges the training and the test sets to create one data set
X_mergedData <- rbind(X_test, X_train)
y_mergedData <- rbind(y_test, y_train)
subject_mergedData <- rbind(subject_test, subject_train)

#Appropriately labels the data set with descriptive variable names
#Make all columns lower case and get rid of parentheses, commas, hyphens, etc.
names(X_mergedData) <- gsub("-", "", tolower(features$V2))
names(X_mergedData) <- gsub("\\(", "", names(X_mergedData))
names(X_mergedData) <- gsub("\\)", "", names(X_mergedData))
names(X_mergedData) <- gsub(",", "", names(X_mergedData))

#Append activity labels
y_mergedData <- merge(y_mergedData, activity_labels, by.x = "V1", by.y = "V1")

#Uses descriptive activity names to name the activities in the data set
names(y_mergedData) <- c("activityid", "activitylabel")

names(subject_mergedData) <- "subject"

#Extracts only the measurements on the mean and standard deviation for each measurement
extractedData <- X_mergedData[,grepl("mean|std", features$V2)]

output <- cbind(subject_mergedData, activitylabel = y_mergedData$activitylabel, extractedData)

#Create a second, independent tidy data set with the average of each variable for each activity and each subject
measures <- !grepl("subject|activitylabel", names(output))
y <- output[,measures]
mean_measures <- names(y)

library(data.table)

meltData <- melt(output, id.vars = c("subject", "activitylabel"), measure.vars = mean_measures)

tidyData <- dcast(meltData, subject + activitylabel ~ variable, mean)

#Create file for tidyData
write.table(tidyData, file = "./tidyData.txt", row.names = FALSE)
