#Load library
library(taxize)
#Load my data, in this case the name is "List_SNN.csv"
list <- read.csv("List_SNN.csv")
#Search a ids from my list
id<-get_ids(names= list$scientificName, db=c("ncbi"))
#Made a table
b<- as.data.frame(id)
#Export my data frame
write.table(id, file = "List_final_ids.csv", sep = ",", col.names = NA,
            qmethod = "double")
