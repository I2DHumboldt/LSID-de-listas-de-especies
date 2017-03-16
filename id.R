
###############
##Get the NameID codes from Tropicos for taxonomic names.
# If you wantm you can use this different data base:
# db = c("itis", "ncbi", "eol", "col", "tropicos", "gbif", "nbn")
#############
# Abrir libreria
  library(taxize)
#Abro espacio de trabajo
setwd("C:/Users/juan.rey/Desktop")
# Abro archivo de trabajo
id <- read.csv("lsid_test.csv", head=TRUE, sep=";")
#Ejecutar el siguiente codigo para obtener ID de Tropicos for taxonomic names
spnames <- as.factor(id$scientificName)
class(spnames)
test<-get_tpsid(spnames, rows=1)
idfinal<-data.frame(spnames, test)

# Exporta tabla de ID
write.table(idfinal, file = "List_final.csv", sep = ",", col.names = NA,
            qmethod = "double")

#################################
# Retrieve taxonomic identifiers for a given taxon name based on "itis"
# Se puede usar las siguientes bases de datos db = c("itis", "ncbi", "eol", "col", "tropicos", "gbif", "nbn")
#######################################
# Abrir libreria
library(taxize)
#Abro espacio de trabajo
setwd("C:/Users/juan.rey/Desktop")
# Abro archivo de trabajo
id <- read.csv("lsid_test.csv", head=TRUE, sep=";")
#Ejecutar el siguiente codigo para obtener ID de Tropicos for taxonomic names
spnames <- as.factor(id$scientificName)
class(spnames)
test1<-get_ids(spnames, db=c("gbif"), rows=1, verbose=TRUE)
idfinal1<-data.frame(cbind(test1$gbif))
as<-paste("itis.gov:servlet:SingleRpt:SingleRpt?search_topic=TSN&search_value=", idfinal1$cbind.test1.itis. ,
          ifelse(is.na(idfinal1$cbind.test1.itis.), "No found", idfinal1$cbind.test1.itis.), sep="")
a<- data.frame(idfinal1, as)
# Exporta tabla de ID
write.table(a, file = "List_final.csv", sep = ",", col.names = NA,
            qmethod = "double")
