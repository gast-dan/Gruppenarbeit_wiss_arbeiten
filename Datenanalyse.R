#Datenanalyse
#a)
#deskriptive Statistiken für metrische Variablen
metrisch_stat(dataset$Alter)

#b)
#deskriptive Statistiken für kategoriale Variablen
kategorial_stat(dataset$Studienfach)

#c)
#deskriptive bivariate Statistiken
#für den Zusammenhang zwischen zwei kategorialen Variablen
function_c(dataset$Interesse_an_Mathematik,dataset$Mathe_LK)

#d)
#deskriptive bivariate Statistiken für den Zusammengang
#zwischen einer metrischen und einer dichotomen Variablen 
binaer_stetig_corr(dataset$Mathe_LK, dataset$Alter)

#e)
#mindestens ordinal skalierte Variable
#quantilbasiert kategorisiert
ordinal_kategorie(dataset$Interesse_an_Programmieren)


#f)
#f wurde noch nicht gemerged und wird deshalb hier erstmal auskommentiert
#geeignete Visualisierung von drei oder vier
#kategorialen Variablen erstellt
#kategorial <- data.frame(dataset$Studienfach,
                         dataset$Interesse_an_Mathematik,
                         dataset$Interesse_an_Programmieren)
#Visual(kategorial)
