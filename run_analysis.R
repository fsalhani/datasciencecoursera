#
# run_analysis.R
#
# Author: Fernando Salhani
# Date Created: 2019-Aug-30
#
# Data Science Specialization Coursera
# Course: Getting and Cleaning Data
# Peer-graded Assignment
#

# First, let's get the raw data to work on. It can be found
# in the /getting_and_cleaning_data folder

x_train <- read.table(file="getting_and_cleaning_data/train/X_train.txt")
x_test <- read.table(file="getting_and_cleaning_data/test/X_test.txt")

y_train <- read.table(file="getting_and_cleaning_data/train/y_train.txt")
y_test <- read.table(file="getting_and_cleaning_data/test/y_test.txt")

subject_train <- read.table(file="getting_and_cleaning_data/train/subject_train.txt")
subject_test <- read.table(file="getting_and_cleaning_data/test/subject_test.txt")

x_labels <- read.table('getting_and_cleaning_data/features.txt')[[2]]

names(x_train) <- x_labels
names(x_test) <- x_labels

# At this point, our data is labeled but in various data sets
# At this next step, I will select only the values for mean and std

train <- x_train[,grep("(mean|std)[(]",x_labels,value=TRUE)]
test <- x_test[,grep("(mean|std)[(]",x_labels,value=TRUE)]

# Add the subject and labels information

train$subject <- subject_train$V1
train$label <- y_train$V1
test$subject <- subject_test$V1
test$label <- y_test$V1

# Merge everything into a single data frame

final_df <- rbind(train,test)

# Change the activity labeks into descriptive names

activity_labels <- read.table('getting_and_cleaning_data/activity_labels.txt')

count <- 1
for (value in final_df$label) {
    final_df[count,'label'] <- as.character(activity_labels[value,'V2'])
    count <- count + 1
}

# Finally, calculate the new data set aggregated by subject and activity

grouped_df <- aggregate(final_df[,names(final_df)[1:66]],list(final_df$label,final_df$subject),FUN=mean)

names(grouped_df) <- c('activity','subject',names(grouped_df[3:68]))

write.table(x=grouped_df,file='tidy_data_set.txt',row.names=FALSE)
