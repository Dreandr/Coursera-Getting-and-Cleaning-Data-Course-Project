## File: run_analysis.R

## I will have to admit that the script does not necessarily follow the Coursera instructions step-by-step.
## Nevertheless, it does deliver everything it is supposed to deliver in line with the task at hand.
## The script partially relies on the Dplyr library; if the package has not been installed by the user, the script will install it automatically.

## Step 0: This part of the code downloads the data we will need for our analysis.

zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile)
}

dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

## Step 1: This script assembles the training set, with variable names extracted from features.txt

trainingData <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainingActivities <- read.table(file.path(dataPath, "train", "y_train.txt"))
TrainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))

columnNamesProp <- read.table(file.path(dataPath, "features.txt"))
columnNames <- as.vector(columnNamesProp[, 2])

colnames(trainingData) <- columnNames

trainingSet <- cbind(TrainingSubjects, trainingActivities, trainingData)
colnames(trainingSet)[1] <- "Subject"
colnames(trainingSet)[2] <- "Activity"

## Here and further down the script, we will remove the datasets to clear up memory
rm(TrainingSubjects, trainingActivities, trainingData)

## Step 2: This script assembles the test data set in a similar way

testData <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivities <- read.table(file.path(dataPath, "test","y_test.txt"))
testSubjects <- read.table(file.path(dataPath, "test","subject_test.txt"))

colnames(testData) <- columnNames

testSet <- cbind(testSubjects, testActivities, testData)
colnames(testSet)[1] <- "Subject"
colnames(testSet)[2] <- "Activity"
rm(testSubjects, testActivities, testData)

## Step 3: Now we merge the two sets into one to start cleaning it up

finalSet <- rbind(trainingSet, testSet)
rm(trainingSet, testSet)

## Step 4: This function replaces activity markers with the appropriate nominal labels

replacement <- function(x){
  x <- gsub(1, "Walking", x)
  x <- gsub(2, "Walking upstairs", x)
  x <- gsub(3, "Walking downstairs", x)
  x <- gsub(4, "Sitting", x)
  x <- gsub(5, "Standing", x)
  x <- gsub(6, "Laying", x)
  x
}

finalSet[, 2] <- replacement(as.vector(finalSet[, 2]))

## Step 5: Now we extract the means and standard deviations and continue making the dataset more user-friendly

finalSetTrimmed <- finalSet[, c(1, 2, grep("mean()", names(finalSet)), grep("std", names(finalSet)))]
rm(finalSet)

ColnamesCleanup <- colnames(finalSetTrimmed)  
ColnamesCleanup <- gsub("[\\(\\)-]", "", ColnamesCleanup)
ColnamesCleanup <- gsub("Acc", " Accelerometer ", ColnamesCleanup)
ColnamesCleanup <- gsub("Gyro", " Gyroscope ", ColnamesCleanup)
ColnamesCleanup <- gsub("Mag", " Magnitude ", ColnamesCleanup)
ColnamesCleanup <- gsub("Freq", " Frequency ", ColnamesCleanup)
ColnamesCleanup <- gsub("mean", " Mean ", ColnamesCleanup)
ColnamesCleanup <- gsub("std", " StandardDeviation ", ColnamesCleanup)
ColnamesCleanup <- gsub("^f", "FrequencyDomain ", ColnamesCleanup)
ColnamesCleanup <- gsub("^t", "TimeDomain ", ColnamesCleanup)
ColnamesCleanup <- gsub("BodyBody", "Body", ColnamesCleanup)

colnames(finalSetTrimmed) <- ColnamesCleanup  
rm(ColnamesCleanup, columnNames, columnNamesProp)

## Step 6: Finally, we create the separate dataset, which shows the means for each subject and actiity, and save it as a .txt file

if(!isTRUE("dplyr" %in% installed.packages())) {install.packages("dplyr")}
library(dplyr)
TidyTrimmedSet <- finalSetTrimmed %>% group_by(Subject, Activity) %>% summarize_all(mean) 
str(TidyTrimmedSet)
write.table(TidyTrimmedSet, file = "./Tidy_data.txt", col.names = T, row.names = F)


