# Before running the script, download the UCI HAR Dataset and
# unzip its contents to a folder named "UCI HAR Dataset".
# Change the working directory to the corresponding folder
# where the dataset is located.

# Set working directory to the folder where the files are located
setwd("./coursera/UCI HAR Dataset")

# Load datasets into R data frames from local folder
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")
x_test <- read.table("test/X_test.txt")  		# 2947 rows x 561 columns
y_test <- read.table("test/y_test.txt")			# 2947 rows x 1 column
subject_test <- read.table("test/subject_test.txt")	# 2947 rows x 1 column

x_train <- read.table("train/X_train.txt")		# 7352 rows x 561 columns
y_train <- read.table("train/y_train.txt")		# 7352 rows x 1 column
subject_train <- read.table("train/subject_train.txt")	# 7352 rows x 1 column

# Change vatriable names
names(activities) <- c("y", "activity")
names(x_test) <- features$V2		# assign the 561 values in features.txt as the variable names in x_test.txt
names(x_train) <- features$V2		# assign the 561 values in features.txt as the variable names in x_train.txt
names(y_test) <- "y"
names(y_train) <- "y"
names(subject_test) <- "subject"
names(subject_train) <- "subject"

test <- cbind(x_test, y_test, subject_test) 	# create test set
train <- cbind(x_train, y_train, subject_train)	# create train set
# 1. Merge the training and the test sets to create one data set
data <- rbind(train, test)

# 2. Extract only the measurements on the mean and standard deviation for each measurement
seldata <- data[,c("tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z", "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z", "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z", "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z", "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z", "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z", "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z", "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z", "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z", "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z", "tBodyAccMag-mean()", "tBodyAccMag-std()", "tGravityAccMag-mean()", "tGravityAccMag-std()", "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()", "tBodyGyroMag-mean()", "tBodyGyroMag-std()", "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()", "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z",
                   "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z", "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z", "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z", "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z", "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z", "fBodyAccMag-mean()", "fBodyAccMag-std()", "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()", "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()", "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()", "y", "subject")]

# 3. Use descriptive activity names to name the activities in the data set
mergedata <- merge(seldata, activities, by.x="y", by.y="y")	# merge data sets in order to get activity names
mergedata$"y" <- NULL		# delete variable y which is no longer needed after the merging

# 4. Change variable names to more descriptive ones and correct the names for variables fBodyBodyAccJerkMag-mean(), fBodyBodyAccJerkMag-std(), fBodyBodyGyroMag-mean(), fBodyBodyGyroMag-std(), fBodyBodyGyroJerkMag-mean() and fBodyBodyGyroJerkMag-std()
names(mergedata) <- c("timeBodyAcceleration_mean_X", "timeBodyAcceleration_mean_Y", "timeBodyAcceleration_mean_Z", "timeBodyAcceleration_std_X", "timeBodyAcceleration_std_Y", "timeBodyAcceleration_std_Z", "timeGravityAcceleration_mean_X", "timeGravityAcceleration_mean_Y", "timeGravityAcceleration_mean_Z", "timeGravityAcceleration_std_X", "timeGravityAcceleration_std_Y", "timeGravityAcceleration_std_Z", "timeBodyAccelerationJerk_mean_X", "timeBodyAccelerationJerk_mean_Y", "timeBodyAccelerationJerk_mean_Z", "timeBodyAccelerationJerk_std_X", "timeBodyAccelerationJerk_std_Y", "timeBodyAccelerationJerk_std_Z", "timeBodyGyroscope_mean_X", "timeBodyGyroscope_mean_Y", "timeBodyGyroscope_mean_Z", "timeBodyGyroscope_std_X", "timeBodyGyroscope_std_Y", "timeBodyGyroscope_std_Z", "timeBodyGyroscopeJerk_mean_X", "timeBodyGyroscopeJerk_mean_Y", "timeBodyGyroscopeJerk_mean_Z", "timeBodyGyroscopeJerk_std_X", "timeBodyGyroscopeJerk_std_Y", "timeBodyGyroscopeJerk_std_Z", "timeBodyAccelerationMagnitude_mean",
                      "timeBodyAccelerationMagnitude_std", "timeGravityAccelerationMagnitude_mean", "timeGravityAccelerationMagnitude_std", "timeBodyAccelerationJerkMagnitude_mean", "timeBodyAccelerationJerkMagnitude_std", "timeBodyGyroscopeMagnitude_mean", "timeBodyGyroscopeMagnitude_std", "timeBodyGyroscopeJerkMagnitude_mean", "timeBodyGyroscopeJerkMagnitude_std", "freqBodyAcceleration_mean_X", "freqBodyAcceleration_mean_Y", "freqBodyAcceleration_mean_Z", "freqBodyAcceleration_std_X", "freqBodyAcceleration_std_Y", "freqBodyAcceleration_std_Z", "freqBodyAccelerationJerk_mean_X", "freqBodyAccelerationJerk_mean_Y", "freqBodyAccelerationJerk_mean_Z", "freqBodyAccelerationJerk_std_X", "freqBodyAccelerationJerk_std_Y", "freqBodyAccelerationJerk_std_Z", "freqBodyGyroscope_mean_X", "freqBodyGyroscope_mean_Y", "freqBodyGyroscope_mean_Z", "freqBodyGyroscope_std_X", "freqBodyGyroscope_std_Y", "freqBodyGyroscope_std_Z", "freqBodyAccelerationMagnitude_mean", "freqBodyAccelerationMagnitude_std",
                      "freqBodyAccelerationJerkMagnitude_mean", "freqBodyAccelerationJerkMagnitude_std", "freqBodyGyroscopeMagnitude_mean", "freqBodyGyroscopeMagnitude_std", "freqBodyGyroscopeJerkMagnitude_mean", "freqBodyGyroscopeJerkMagnitude_std", "subject", "activity")


# 5. Create a tidy data set, called tidydata, with the average of each variable for each activity and each subject
tidydata <- aggregate(mergedata[,1:66], by=list(subject=mergedata$"subject", activity=mergedata$"activity"), FUN=mean)
write.table(tidydata, file="tidy_data.txt", sep="\t")	# export tidy data set to a tab delimited txt file - the file can be loaded into R using read.table("tidy_data.txt", sep="\t")
