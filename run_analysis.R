#Get Data
library(plyr)
fileName <- "Data_set.zip"
lnk<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download the file to the WD
if(!file.exists(fileName))
{
  download.file(lnk,destfile="Dataset.zip", mode = "wb")
}

# Extract the Downloaded File
if(!file.exists(dir)){
  unzip("Dataset.zip", files = NULL, exdir=".")
}


# Reading Rables
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
activity_Labels = read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")


#Colmn
colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(activityLabels) <- c("activityId","activityType")
colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"
colnames(subject_train) <- "subjectId"



#1- Merging the training and the test sets to create one data set.
train_set <- cbind(y_train, subject_train, x_train)
test_set <- cbind(y_test, subject_test, x_test)
subdataset <- rbind(subject_train, subject_test)
dataSet <- rbind(train_set, test_set)

#2- Extracting only the measurements on the mean and standard deviation for each measurement.
colNames <- colnames(dataSet)

mean_std<- (grepl("activityId" , colNames) | 
              grepl("subjectId" , colNames) | 
              grepl("mean.." , colNames) | 
              grepl("std.." , colNames) 
)
meanstdSet <- dataSet[,mean_std]

#3- Naming the activities in the data set

activities <- rbind(y_test,y_train)
#update Activity label
activities[, 1] <- activity_Labels[activities[, 1], 2]
#Renaming coln
names(activities) <- "Activities"



# Labeling all Data sets
# Label dataset
names(dataSet)<-"All Data set"
names(meanstdSet)<-"Means and Standards Data set"
names(subdataset) <- "SubjectsDataset"
alldatasets <- cbind(dataSet, subdataset,activities)

# New Tidy data set
TidyDataSet <- aggregate(.~subjectId + activityId, allmeanstd, mean)

write.table(TidyDataSet, "avg_data.txt", row.name=FALSE)

