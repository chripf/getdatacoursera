runAnalysis<-function(){
    # check file exists
    if(!file.exists("activity_labels.txt")){
        stop("activity labels file not found. are you sure the data is available?")
    }
    # read activity and feature info
    activities<-read.table("activity_labels.txt")
    names(activities)<-c("Number","Activity")
    features<-read.table("features.txt")
    names(features)<-c("Number","Name")
    
        
    library(data.table)      
    
    testData<-fread("test/subject_test.txt")
    setnames(testData, "V1", "Subject")
    testData$Activity<-fread("test/y_test.txt")
    testData$Activity<-activities$Activity[testData$Activity]  
   
    # read lines from file?
    xTest<-read.table("test/X_test.txt");
    
    testData[,as.character(features$Number):=t(xTest)]
    testData
    
    #xTrain<-read.table("train/X_train.txt");
    # convert data to numeric
    
    # push data to data table
                  
    
    #xTest<-read.csv("test/X_test.txt", sep = " ")
}