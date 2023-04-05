library(dplyr)

features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
s_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Merges the training and the test sets to create one data set
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)
s <- rbind(s_train, s_test)

# Appropriately labels the data set with descriptive variable names
colnames(x) <- features[, 2]
colnames(y) <- "activity"
colnames(s) <- "subject"

# Extracts only the measurements on the mean and standard deviation for each measurement
x <- x |> dplyr::select(contains("mean()"), contains("std()"))

# Uses descriptive activity names to name the activities in the data set
y$activity <- factor(y$activity, levels = activity[, 1], labels = activity[, 2])

data_set <- cbind(s, y, x)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject
tidy_data_set <- data_set |>
        group_by(subject, activity) |>
        summarise_all(mean)

write.table(tidy_data_set, "tidy_data_set.txt", row.name = FALSE)