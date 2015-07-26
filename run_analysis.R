library(data.table)
library(dplyr)
library(reshape2)



features<-read.csv("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",sep = " ",header = FALSE)

feat<-as.character(features[,2])

activity<-read.csv("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",header = FALSE)
`colnames<-`(activity,"activity")

subjects_test=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
x_test=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt",col.names = feat)
y_test=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")

x_train=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt",col.names = feat)
y_train=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subjects_train=read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",header = FALSE)

ybound=rbind(y_test,y_train)
#ybound2<-ybound

#ybound<-gsub(as.numeric(1),"WALKING",ybound)
#ybound<-gsub(as.numeric(2),"WALKING_UPSTAIRS",ybound)
#ybound<-gsub(as.numeric(3),"WALKING_DOWNSTAIRS",ybound)
#ybound<-gsub(as.numeric(4),"SITTING",ybound)
#ybound<-gsub(as.numeric(5),"STANDING",ybound)
#ybound<-gsub(as.numeric(6),"LAYING",ybound)


subjects_bound=rbind(subjects_test,subjects_train)
names(subjects_bound)[names(as.vector(subjects_bound)) == 'V1'] <- 'Subject'
names(ybound)[names(as.vector(ybound)) == 'V1'] <- 'Activity'

bnd<-cbind(subjects_bound,ybound,rbind(x_test,x_train))
beat<-cbind(subjects_bound,ybound,bnd[regexpr("mean()",colnames(bnd))!=-1])
beat<-cbind(beat,bnd[regexpr("std()",colnames(bnd))!=-1])
group<-group_by(beat,Subject)
groups<-group_by(group,Activity)

dataset<-as.data.frame(groups)

dataset[,2]<-gsub(as.numeric(1),"WALKING",dataset[,2])
dataset[,2]<-gsub(as.numeric(2),"WALKING_UPSTAIRS",dataset[,2])
dataset[,2]<-gsub(as.numeric(3),"WALKING_DOWNSTAIRS",dataset[,2])
dataset[,2]<-gsub(as.numeric(4),"SITTING",dataset[,2])
dataset[,2]<-gsub(as.numeric(5),"STANDING",dataset[,2])
dataset[,2]<-gsub(as.numeric(6),"LAYING",dataset[,2])


write.table(dataset,"dataset")

filterdat<-function(sub_id,act_id,tidydat){
  
  filtered<-filter(groups,Subject == sub_id & Activity == act_id)
  tidydat<-rbind(tidydat,sapply(filtered,mean))
  
  return(tidydat)
}


tidydat=c()

for (j in c(1:6)){
  for (i in c(1:30)) {
    sub_id=i
    act_id=j
    tidydat<-filterdat(sub_id = sub_id,act_id = act_id,tidydat)
    tidydat<-as.data.frame(tidydat)}
}



tidydat[,2]<-gsub(as.numeric(1),"WALKING",tidydat[,2])
tidydat[,2]<-gsub(as.numeric(2),"WALKING_UPSTAIRS",tidydat[,2])
tidydat[,2]<-gsub(as.numeric(3),"WALKING_DOWNSTAIRS",tidydat[,2])
tidydat[,2]<-gsub(as.numeric(4),"SITTING",tidydat[,2])
tidydat[,2]<-gsub(as.numeric(5),"STANDING",tidydat[,2])
tidydat[,2]<-gsub(as.numeric(6),"LAYING",tidydat[,2])



write.table(tidydat,"tidydata.txt",sep=" ",row.names = FALSE)
