corr<-function(directory, threshold=0){
  dirt<-list.files(directory,full.name=TRUE)
  data_source<-vector(mode="numeric",length=0)
  for (i in 1:length(dirt)){
     monitor_i<-read.csv(dirt[i])
     corr_sum<-sum((!is.na(monitor_i$sulfate))&(!is.na(monitor_i$nitrate)))
     monitor_i_1<-monitor_i[which(!is.na(monitor_i$sulfate)),]
     monitor_i_2<-monitor_i_1[which(!is.na(monitor_i_1$nitrate)),]
  if(corr_sum>threshold){data_source<-c(data_source,cor(monitor_i_2$sulfate,monitor_i_2$nitrate))
}}
data_source}