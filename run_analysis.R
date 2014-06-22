#main <- function() {
    features <- read.table("features.txt")
    
    featuresstd <- grep("std()", features[,2], fixed=T)
    featuresmean <- grep("mean()", features[,2], fixed=T)
    
    # Extracts only the features on the mean and standard deviation
    featuresneeded <- c(featuresstd,featuresmean)
    
    activitylabels <- read.table("activity_labels.txt")
    
    #get combined dataset from test folder
    testds <- getFullDataSet("test", features, featuresneeded)
    #get combined dataset from train folder
    trainds <- getFullDataSet("train", features, featuresneeded)
    
    #combine test dataset with train one
    merged <- rbind(testds, trainds)
    
    #replace activity factor levels with labels
    fac <- as.factor(merged[,"activity"])
    merged[,"activity"] <- factor(fac, levels=activitylabels[,1], labels=activitylabels[,2])
    
    write.csv(merged,"result.txt", row.names=F)
    
    avgDS <- getAvgData(merged)
#}

getFullDataSet <- function (setname, features, featuresneeded) {

	#read subject and activity lists from files into tables
    subj <- read.table(sprintf("%s\\subject_%s.txt", setname, setname)) 
    activity <- read.table(sprintf("%s\\y_%s.txt", setname, setname))
    
	#reading features dataset
    ds <- read.table(sprintf("%s\\X_%s.txt", setname, setname), col.names=features[,2])
    
	#extracting only needed (std and mean values) features from full dataset
    ds <- ds[,featuresneeded]
    
	#adding one column for each activity and subject list
    ds$activity <- activity[,1]
    ds$subject <- subj[,1]
     
	#function returns resulting dataset
    ds
}

getAvgData <- function(initialDataset) {
    
}