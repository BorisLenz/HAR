#rm(list=ls())
library(dplyr)
# read in files....
features <- read.table("UCI HAR Dataset/features.txt",colClasses="character")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt",colClasses=c("integer","character"))


subject_comb <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_comb <- read.table("UCI HAR Dataset/train/X_train.txt")
Y_comb <- read.table("UCI HAR Dataset/train/y_train.txt")

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

# append the test-data to the combined data
subject_comb <- rbind(subject_comb,subject_test)
X_comb <- rbind(X_comb,X_test)
Y_comb <- rbind(Y_comb,Y_test)


# replace column names (for the columns we are interested in later) with better readable names
features$V2 = gsub('-mean', 'Mean', features$V2)
features$V2 = gsub('-std', 'Std', features$V2)
features$V2 = gsub('[-()]', '', features$V2)

# prefix column names with "Avg." to indicate that these are means (or will be, in the output)
features$V2 = gsub('^', 'Avg.', features$V2)

# update to column names of X_comb with our updated, meaningful column names
colnames(X_comb) <- features$V2

# Keep only the measurements on the mean and standard deviation for each measurement.
# As per file features_info.txt, those are the columns that contain "mean()" or "std()",
# which we replaced by "Mean" and "Std".
X_comb <- X_comb[,grep("Mean|Std",colnames(X_comb))]

# add the Activity and Subject columns
X_comb <- cbind(Activity=Y_comb$V1,X_comb)
X_comb <- cbind(Subject=subject_comb$V1,X_comb)

# replace the Activity values (1-6) with their more meaningful character values from activity_labels.txt
X_comb$Activity <- as.character(lapply(X_comb$Activity, function(x) x <- activity_labels$V2[x]))

# create a tidy dataset
tidy_X <- group_by(X_comb,Subject,Activity)
tidy_X <- summarise_each(tidy_X,c("mean"))

# write the result to a text file
write.table(tidy_X,file="UCI_HAR_tidy.txt", row.names=FALSE)

# read the table using this command:
#my_table <- read.table("UCI_HAR_tidy.txt",header=TRUE)
