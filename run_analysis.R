#raw data file url address
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


#if not already downloaded, download raw data to the working directory and unzip it
if (!file.exists("courseProject.zip")) {
  download.file(fileUrl, destfile = paste0(getwd(), "/courseProject.zip"))
}
unzip(paste0(getwd(), "/courseProject.zip"), exdir = paste0(getwd(), "/unzippedCourseProject"))


#Read the text files into data frames
subjectTrain <- read.table(paste0(getwd(), "/unzippedCourseProject/UCI HAR Dataset/train/subject_train.txt"), header = FALSE)
subjectTest <- read.table(paste0(getwd(), "/unzippedCourseProject/UCI HAR Dataset/test/subject_test.txt"), header = FALSE)

yTrain <- read.table(paste0(getwd(),"/unzippedCourseProject/UCI HAR Dataset/train/y_train.txt"), header = FALSE)
yTest <- read.table(paste0(getwd(),"/unzippedCourseProject/UCI HAR Dataset/test/y_test.txt"), header = FALSE)

xTrain <- read.table(paste0(getwd(),"/unzippedCourseProject/UCI HAR Dataset/train/X_train.txt"), header = FALSE)
xTest <- read.table(paste0(getwd(), "/unzippedCourseProject/UCI HAR Dataset/test/X_test.txt"), header = FALSE)

features <- read.table(paste0(getwd(),"/unzippedCourseProject/UCI HAR Dataset/features.txt"), header = FALSE)
activityLabels <- read.table(paste0(getwd(), "/unzippedCourseProject/UCI HAR Dataset/activity_labels.txt"), header = FALSE)


#Course Project Point 1: 
#Merge the training and the test sets to create one data set (first step)
#Combine the training and testing data into one data frame
#Repeat for subject, x and y data
subjectCombined <- rbind(subjectTrain, subjectTest)
yCombined <- rbind(yTrain, yTest)
xCombined <- rbind(xTrain, xTest)


#Relabel the column names of the subject and activity data to "Subject" and "Activity"
colnames(subjectCombined) <- "Subject"
colnames(yCombined) <- "Activity"

#Relabel the column names of the x data to variable names to supplied features
featuresText <-features[,2]
colnames(xCombined) <- featuresText


#Course Project Point 2: 
#Extract only the measurements on the mean and standard deviation for each measurement.
#Find a subset of column names that contain the mean or standard deviation (but exclude meanFrequency)
nameString<- c(names(xCombined))
xCombinedMeansAndStdDevs <- xCombined[, ((grepl("mean", nameString, ignore.case = TRUE)) | (grepl("std", nameString, ignore.case = FALSE)) ) != (grepl("meanFreq", nameString)) ]


#Extract the variable names and then neaten them following lecture guidelines
namesMeanAndStd <- names(xCombinedMeansAndStdDevs)



#Course Project Point 4: 
#Label the data set with descriptive variable names. 
#neaten by making all lowercase
neatNames <- tolower(c(names(xCombinedMeansAndStdDevs)))

#neaten by removing punctuation
neatNames <- gsub("\\(","",c(neatNames))
neatNames <- gsub("\\)","",c(neatNames))
neatNames <- gsub("\\)","",c(neatNames))
neatNames <- gsub(",","",c(neatNames))
neatNames <- gsub("-","",c(neatNames))

#neaten by lengthening abbreviations to full words
neatNames <- gsub("acc","accelerometer",c(neatNames))
neatNames <- gsub("gyro","gyroscope",c(neatNames))
neatNames <- gsub("tbody","timebody",c(neatNames))
neatNames <- gsub("tgravity", "timegravity", c(neatNames))
neatNames <- gsub("fbody","frequencybody",c(neatNames))
neatNames <- gsub("mag","magnitude",c(neatNames))

#Relabel the combined x data with the neatened variable names
names(xCombinedMeansAndStdDevs) <- neatNames

#combine the neatened subject, y and x data together
#Course Project Point 1 (continued): Merge the training and the test sets to create one data set.
allCombined <- cbind(subjectCombined, yCombined, xCombinedMeansAndStdDevs)



#Course Project point 3: 
#Use descriptive activity names to name the activities in the data set
#factor the activities so they are activity labels rather than numbers
allCombined[,2] <- factor(allCombined[,2], levels=1:6, labels=activityLabels[,2])


#Course Project point 5:
#create independent tidy data set with the average of each variable for each activity and each subject.
#Reshape the data to find average of each variable and activity subset
library(reshape2)
moltenCombined <- melt(allCombined, id = c("Subject", "Activity"), measure.vars = c(neatNames))
tidyData <- dcast(moltenCombined, Subject + Activity ~ variable, mean)


fileDestination  <- paste0(getwd(), "/UCIHARTidyData.txt")
write.table(tidyData, file = fileDestination, row.names= FALSE)
