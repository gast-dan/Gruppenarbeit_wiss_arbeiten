#Datenanalyse
#a)
#deskriptive Statistiken fuer metrische Variablen

metrisch_stat(dataset$Alter)

#mittelwert: 25.21, varianz: 3.278687, Standardabweichung: 1.810714, Modalwert:24 , Median: 25, Minimum: 20, Maximum: 29

#b)
#deskriptive Statistiken fuer kategoriale Variablen

kategorial_stat(dataset$Studienfach)
kategorial_stat(dataset$Interesse_an_Mathematik)

#c)
#deskriptive bivariate Statistiken
#fuer den Zusammenhang zwischen zwei kategorialen Variablen

function_c(dataset$Interesse_an_Mathematik,dataset$Mathe_LK)
#Kovarianz: 0.3583838, Pearson-Korrelation: 0.3383459, Spearman-Korrelation: 0.3449616


function_c(dataset$Interesse_an_Programmieren, dataset$Interesse_an_Mathematik)
#Kovarianz: -0.3349495, Pearson-Korrelation: -0.08283833, -0.0760725


#d)
#deskriptive bivariate Statistiken fuer den Zusammengang
#zwischen einer metrischen und einer dichotomen Variablen 

binaer_stetig_corr(dataset$Mathe_LK, dataset$Alter)
#0.1320068 

#e)
#mindestens ordinal skalierte Variable
#quantilbasiert kategorisiert
ordinal_kategorie(dataset$Interesse_an_Programmieren)
ordinal_kategorie(dataset$Interesse_an_Mathematik)


#f)
#geeignete Visualisierung von drei kategorialen Variablen erstellt
Visual(dataset$Studienfach,  dataset$Interesse_an_Mathematik, dataset$Interesse_an_Programmieren)


