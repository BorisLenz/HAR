# UCI-HAR
## Description
This repository contains an R script that processes data about accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was [obtained.](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The R script in this repository reads the data provided in a zip file and prepares tidy data which can then be used for further analysis. Here's what the script does in detail:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. The data set produced in step 5 is saved as a text file which can be read into R.

## Files in this repository
* run_analysis.R - R script to produce the tidy text file
* UCI_HAR_tidy.txt - the tidy text file produced by run_analysis.R
* CodeBook.md - a description of the variables produced in the tidy text file
* README.md - this file

## How to produce the tidy text file
1. Download the raw data as compressed file from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Extract the contents of this file to your working directory of R.
3. Download the run_analysis.R file to your working directory of R.
4. Run the file run_analysis.R in R by typing source("run_analysis.R"). The tidy text file named UCI_HAR_tidy.txt will be created in your R working directory.

## How to read the tidy text file back into R
Use the following command to read back the text file created by run_analysis.R (or the one downloaded from this repository) into R:
```
my_table <- read.table("UCI_HAR_tidy.txt",header=TRUE)
```





