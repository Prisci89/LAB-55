library(bibliometrix)
library(xlsx)
library(bibliometrixData)
#importar WOS
wos_data <- convert2df("WOS.txt")
#importar SCOPUS
scopus_data = convert2df("SCOPUS.bib", dbsource = "scopus" , format = "bibtex")
#combinar ambas bases de datos
wos_scopus=mergeDbSources(wos_data,scopus_data,remove.duplicated = T)
#exportar fusión
write.xlsx(wos_scopus, "wos_scopus.xlsx")
biblioshiny()
