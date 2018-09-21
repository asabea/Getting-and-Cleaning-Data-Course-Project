#Get Data
fileName <- "Dataset.zip"
lnk<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download the file to the WD
if(!file.exists(fileName))
{
  download.file(lnk,destfile="Dataset.zip", mode = "wb")
}


# Extract the Downloaded File
if(file.exists(getwd())){
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



#1- Merging the training and the test sets to create one data set.
test_data <- cbind(subject_test,y_test,x_test)
train_data <- cbind(subject_train,y_train,x_train)

all_data <- rbind(test_data,train_data)

headerNames <- c("subjects","activities",as.character(features$V2))
colnames(all_data) <- headerNames

#2- Extracting only the measurements on the mean and standard deviation for each measurement.
meanstdSet_Col <- grep("subjects|activities|[Mm]ean|std", headerNames, value = FALSE)
meanstdSet_Header <- grep("subjects|activities|[Mm]ean|std", headerNames, value = TRUE)
meanstdSet <- all_data[ ,meanstdSet_Col]


#3- Uses descriptive activity names to name the activities in the data set,Naming the activities in the data set
all_data[,2]<-activity_Labels[all_data[,2],2] # replacing Activity ID to the equivalent activity name in ALL_Data set
meanstdSet[,2]<-activity_Labels[meanstdSet[,2],2] # replacing Activity ID to the equivalent activity name in Mean&Std set



# 4.Labeling all Data sets variable to be more descriptive
# Labeling All_data set : Header added in step 1
# Labeling Mean & Standard set : Header added in step 2
names(all_data) <- "All Dataset" # Naming ALL Data set
names(meanstdSet)<-gsub("activities", "ActivityName", names(meanstdSet))
names(meanstdSet)<-gsub("Acc", "Accelerometer", names(meanstdSet))
names(meanstdSet)<-gsub("Mag", "Magnitude", names(meanstdSet))
names(meanstdSet)<-gsub("Gyro", "Gyroscope", names(meanstdSet))
names(meanstdSet)<-gsub("^t", "Time", names(meanstdSet))
names(meanstdSet)<-gsub("^f", "Frequency", names(meanstdSet))
names(meanstdSet)<-gsub("-freq()", "Frequency", names(meanstdSet), ignore.case = TRUE)
names(meanstdSet)<-gsub("tBody", "Time Body", names(meanstdSet))


# New Tidy data set
TidyDataSet <- aggregate(.~subjects + ActivityName, meanstdSet,mean)
TidyDataSet<-TidyDataSet[order(TidyDataSet$subjects,TidyDataSet$ActivityName),]
write.table(TidyDataSet, "MeanNSTD_Tiddy_data.txt", row.name=FALSE)


