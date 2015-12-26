complete <- function(directory, id = 1:332) {
  dirt<-list.files(directory,full.name=TRUE)
data_source<-data.frame()

for (i in id){
   monitor_i<-read.csv(dirt[i])
   count<-sum(complete.cases(monitor_i))
   data_source<-rbind(data_source,data.frame(i,count))
}
colnames(data_source)<-c("id","nobs")
data_source
}
