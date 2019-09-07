# Getting and Cleaning Data Peer-graded Assignment

## The repository

In this repository, you can find:

- [Codebook.md](Codebook.md): A brief explanation of the data in the [tidy_data_set.txt](tidy_data_set.txt)
- [run_analysis.R](run_analysis.R): The script that gets the original data and performs some cleaning and aggregations to get the [final dataset](tidy_data_set.txt)
- [tidy_data_set.txt](tidy_data_set.txt): The output dataset from the [run_analysis.R](run_analysis.R) script
- [getting_and_cleaning_data folder](getting_and_cleaning_data): A folder containing the original data from the [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) provided for this project

## The main script

The R script in this repository reads the data from the [train](getting_and_cleaning_data/train) and [test](getting_and_cleaning_data/test) files and summarizes it by calculating the mean of each of the values aggregated by subject and activity. The steps it takes are:

- Read the train and test raw data files
- Read the label and feature files to make the data easier to read
- Filter the raw data to keep only the columns that contain mean or standard deviation metrics
- Merge the test and train datasets into one
- Change the activity numbers into the correct labels
- Aggregates the data_frame by activity and subject using the mean() function
- Creates the [tidy_data_set.txt](tidy_data_set.txt) file with the resulting data_frame
