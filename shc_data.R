library(readxl)

data <- read_excel("src/kzp17_daten.xlsx", sheet="KZ2017_KZP17")
data <- data[!is.na(data$JAHR) & data$Inst!="Ganze Schweiz",]

# Select vars to keep
data <- data[,c("JAHR","KT","Inst","Adr","Ort","Typ","Akt","SL", "AnzStand", "SA", "LA",
                "Ops", "PersA", "PersP", "PersMT", "BettenStatA", "pBettenBelStatA")]

# Put Zip code in separate var
data$PLZ <- substr(data$Ort,1,4)
data$Ort <- sub("[0-9]{4} ","", data$Ort)

# split multi string fields
tosplit <-  c("Akt", "SL", "LA", "SA")

for (i in tosplit) {

  foo <- strsplit(unlist(data[,i]),", ", fixed=T)
  foo <- data.frame(do.call(rbind, lapply(lapply(foo, factor, levels=unique(unlist(foo))), table)))
  colnames(foo) <- paste0(i, "_", colnames(foo))
  data <- cbind(data, foo)
  rm(foo)

}

# Add typology
typo <- read_excel("src/kzp17_daten.xlsx", sheet="Typologie")
colnames(typo) <- c("Typ", "Typ_de", "Typ_fr", "Typ_it")

data <- merge(data, typo, by="Typ", all=T)
data <- cbind("id"=1:nrow(data), data)

# check
table(data$Akt, data$Akt_A)
table(data$SL, data$SL_IPS)
table(data$SA, data$SA_CT)

# Remove multi string fields
data <- data[,!(colnames(data) %in% tosplit)]

# write
write.csv(data, "data/shc_infra.csv", row.names = F, na="", fileEncoding = "UTF-8")
