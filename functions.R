library("modeest")

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
function_c = function(){
  
  
  
  
}

#Eine Funktion, die geeignete deskriptive bivariate Statistiken für den Zusammengang zwischen einer metrischen und einer dichotomen Variablen berechnet und ausgibt
# Name ist Platzhalter!
function_d = function(){
  
  
  
  
}

#Eine Funktion, die eine mindestens ordinal skalierte Variable quantilbasiert kategorisiert (z.B. in „niedrig“, „mittel“, „hoch“)
# Name ist Platzhalter!
function_e = function(){
  
  
  
  
}


#Eine Funktion, die eine geeignete Visualisierung von drei oder vier kategorialen Variablen erstellt
# Name ist Platzhalter!
function_f = function(){
  
  
  
  
}



#Freiwillig: weitere zur Deskription und Visualisierung geeignete Funktionen
# Name ist Platzhalter!
function_g = function(){
  
  
  
  
}