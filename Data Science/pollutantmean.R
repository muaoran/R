
pollutantmean <- function(directory, pollutant, id = 1:332) {
          dirt<-list.files(directory, full.names=TRUE)
   data_source<-data.frame()
 for (i in id){data_source<-rbind(data_source,read.csv(dirt[i]))}
 mean(data_source[,pollutant],na.rm=TRUE)
 }



