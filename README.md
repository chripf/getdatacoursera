getdatacoursera
===============

Course Project submission for [Getting and Cleaning Data](https://class.coursera.org/getdata-006) on coursera.

Analysis overview
-----------------
The script placed in `run_analysis.R` assumes the required data files reside in the same directory as the script file. A basic check is done by checking the existance of the file `activity_lables.txt`.

1. Read activies from `actvity_labels.txt`
1. Read features from `features.txt`
1. Read test data
  1. Read subject information from `test/subject_test.txt` using this as a first column.
  1. Second column uses `y_test.txt` holding activity information. This is transformed to human readable information by matching the numbers with the description we took from `actvity_labels.txt`.
  1. Attach test data from `test/X_test.txt` by reading it to a table and adding the transposed columns.
  1. TODO column names
1. Read train data by repeating the steps done for the test data, but using the files `train/subject_train`, `train/y_train.txt` and `X_train.txt` respectively.
