
# Eine Funktion, die verschiedene geeignete deskriptive Statistiken für metrische Variablen berechnet und ausgibt
# Name ist Platzhalter!
function_a = function(){
  
  
  
  
}



#Eine Funktion, die verschiedene geeignete deskriptive Statistiken für kategoriale Variablen berechnet und ausgibt
# Name ist Platzhalter!
function_b = function(){
  
  
  
  
}

#Eine Funktion, die geeignete deskriptive bivariate Statistiken für den Zusammenhang zwischen zwei kategorialen Variablen berechnet ausgibt
# Name ist Platzhalter!
function_c = function(){
  
  
  
  
}

#Eine Funktion, die geeignete deskriptive bivariate Statistiken für den Zusammengang zwischen einer metrischen und einer dichotomen Variablen berechnet und ausgibt
# Name ist Platzhalter!
function_d = function(){
  
  
  
  
}

#ordinal_kategorie - kategorisiert eine ordinal skalierte Variable quantilbasiert in "niedrig", "mittel", "hoch"
#Eingabe:
#   data - ordinal sklaierter Vektor, in numerisch umwandelbar, quantiles - aeussere Quantilsgrenzen, Abgrenzung von
#          "niedrig" zu "mittel" und "mittel" zu "hoch".
#Ausgabe:
#   Vektor mit Eingabedimension, jeweils durch Kategorie ersetzt.
ordinal_kategorie = function(data, quantiles=0.25){
  data = as.numeric(data)
  q = quantile(data, probs = seq(0, 1, quantiles))
  new_data = c()
  new_data[data <= q[[2]]] = "niedrig"
  new_data[data >= q[[length(q)-2]]] = "hoch"
  print(new_data)
  new_data[is.na(new_data)] = "mittel"
  return(new_data)
}


#Eine Funktion, die eine geeignete Visualisierung von drei oder vier kategorialen Variablen erstellt
# Name ist Platzhalter!
function_f = function(){
  
  
  
  
}



#Freiwillig: weitere zur Deskription und Visualisierung geeignete Funktionen
# Name ist Platzhalter!
function_g = function(){
  
  
  
  
}