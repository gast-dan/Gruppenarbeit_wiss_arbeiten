library("modeest")
library(GGally)

# Eine Funktion, die verschiedene geeignete deskriptive Statistiken für metrische Variablen berechnet und ausgibt
# Name ist Platzhalter!
function_a = function(){




}




#kategorial_stat - berechnet geeignete deskriptive Statistiken f�r kategoriale Variablen
#Eingabe:
#   x - Vektor: kategoriale Variable
#Ausgabe:
#   Liste mit 3 Elementen: absolute Haeufigkeit, relative Haeufigkeit, Modalwert
kategorial_stat = function(x){
  absH <- table(x)
  relH <- table(x)/length(x)
  mode <- mfv(x)
  return(list(absH, relH, mode))
}

#Test
kategorial_stat(c("M", "M", "F", "M", "M", "M", "F", "F", "F", "M"))

#Eine Funktion, die geeignete deskriptive bivariate Statistiken für den Zusammenhang zwischen zwei kategorialen Variablen berechnet ausgibt
# Name ist Platzhalter!


# Berechnet fuer zwei numerische Vektoren gleicher Laenge die Kovarianz
# und die Korrelationen nach Pearson (lineare korrelation) bzw.
# Spearman (monoton, aber nicht notwendigerweise linear)
function_c = function(vector1, vector2){
  
  stopifnot(is.numeric(vector1),
            is.numeric(vector2),
            length(vector1) == length(vector2))
  
  
  covariance = cov(vector1, vector2)
  pearson = cor(vector1, vector2, method = "pearson")
  spearman = cor(vector1, vector2, method = "spearman")
  
  
  return(list("Kovarianz" = covariance,
              "Pearson-Korrelation" = pearson,
              "Spearman-Korrelation" =  spearman)
         )
  
  

}



# Beziehung zwischen einer binären Variablen x und einer kontinuierlichen Variablen y.
# 
# nimmt einen Wert zwischen -1 und 1 an, wobei:
#   
# -1 zeigt eine vollkommen negative Korrelation zwischen zwei Variablen an
# 0 zeigt keine Korrelation zwischen zwei Variablen an
# 1 zeigt eine vollkommen positive Korrelation zwischen zwei Variablen an

# https://statologie.de/punktbiseriale-korrelation-r/

binaer_stetig_corr = function(binary_vector, stetig_vektor){
  
  stopifnot(is.numeric(binary_vector),
            is.vector(binary_vector),
            is.numeric(stetig_vektor),
            is.vector(stetig_vektor),
            length(stetig_vektor) == length(binary_vector),
            unique(binary_vector) == c(0,1) | unique(binary_vector) == c(1,0)
            )

  
  return(cor.test(binary_vector, stetig_vektor)$estimate)

}



#ordinal_kategorie - kategorisiert eine ordinal skalierte Variable quantilbasiert in "niedrig", "mittel", "hoch"
#Eingabe:
#   data - ordinal sklaierter Vektor, in numerisch umwandelbar, quantiles - aeussere Quantilsgrenzen, Abgrenzung von
#          "niedrig" zu "mittel" und "mittel" zu "hoch".
#Ausgabe:
#   Vektor mit Eingabedimension, jeweils durch Kategorie ersetzt.
ordinal_kategorie = function(data, quantiles=0.25){
  data = as.numeric(data)
  stopifnot(!any(is.na(data)))
  q = quantile(data, probs = seq(0, 1, quantiles))
  new_data = c()
  new_data[data <= q[[2]]] = "niedrig"
  new_data[data >= q[[length(q)-2]]] = "hoch"
  new_data[is.na(new_data)] = "mittel"
  return(new_data)
}

#visual - erstellt eine geeignete Visualisierung von drei kategorialen Variablen
#Eingabe:
#   kat_vektor1, kat_vektor2, kat_vektor3- die kategoriellen Variablen i
#Ausgabe:
#  die Visualisierung
Visual = function(kat_vektor1,kat_vektor2,kat_vektor3){ 
kategorial <- data.frame(kat_vektor1,kat_vektor2,kat_vektor3)
#Ich habe die hier noch einmal zusammengefasst, da in ggpairs ein dataframe eingesetzt werden soll, der nur aus kategorialen Variablen besteht.
ggpairs(kategorial)
 }
#Test:
#daten <- data.frame(Geschlecht <- c("M","F","M"), Alter <- c(1,2,3), Name<- c("A","B","C"))
#Visual(daten)




#Freiwillig: weitere zur Deskription und Visualisierung geeignete Funktionen
# Name ist Platzhalter!
function_g = function(){




}
