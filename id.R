
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
setwd("~/miruta")
# Abro archivo de trabajo wuuu
id <- read.csv("misdatos.csv", fileEncoding = "UTF-8")
#Ejecutar el siguiente codigo para obtener ID de Tropicos for taxonomic names
spnames <- as.character(id$scientificName)
class(spnames)
sp = as.number(spnames)
test1<-get_ids(spnames, db=c("gbif"), rows=1, verbose=TRUE)
idfinal1<-data.frame(cbind(test1$gbif))
idfin<- data.frame(species=row.names(idfinal1), idfinal1, row.names=NULL, check.names=FALSE)
idfin$cbind.test1.gbif.
as<-paste("gbif.org:species:", idfin$cbind.test1.gbif. ,sep="")
a<- data.frame(idfin, as)
