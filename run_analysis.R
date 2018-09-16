#Get Data
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
features <- read.table("UCI HAR Dataset/features.txt")
activity_Labels = read.table("UCI HAR Dataset/activity_labels.txt")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")


#Colmn
colnames(x_train) <- features[,2] 
colnames(x_test) <- features[,2]
colnames(y_train) <-"activityId"
colnames(y_test) <- "activityId"

colnames(activity_Labels) <- c("activityId","activityName")
 
colnames(subject_test) <- "subjectId"
colnames(subject_train) <- "subjectId"


#1- Merging the training and the test sets to create one data set.
test_data <- cbind(subject_test,x_test,y_test)
train_data <- cbind(subject_train,x_train,y_train)

all_data <- rbind(test_data,train_data)

headerNames <- c("subjects",as.character(features$V2),"activities")
colnames(all_data) <- headerNames

#2- Extracting only the measurements on the mean and standard deviation for each measurement.
meanstdSet_Col <- grep("subjects|[Mm]ean|std|activities", headerNames, value = FALSE)
meanstdSet <- all_data[ ,meanstdSet_Col]



#3- Naming the activities in the data set

activities_Dataset <- rbind(y_test,y_train)
#update Activity label
activities_Dataset[, 1] <- activity_Labels[activities_Dataset[, 1], 2]
#Renaming coln
names(activities_Dataset) <- "Activities"



# Labeling all Data sets
# Label dataset
names(meanstdSet)<-"Means and Standards Data set"
names(activities_Dataset) <- "Activities Dataset"

# New Tidy data set
TidyDataSet <- aggregate(.~subjectId + activityId, all_data, mean)

write.table(TidyDataSet, "Tiddy_data.txt", row.name=FALSE)

