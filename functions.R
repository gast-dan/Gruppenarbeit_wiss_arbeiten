
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

#test
function_c(sample(100, 20), sample(100, 20))
# $Kovarianz
# [1] 74.34211
# 
# $`Pearson-Korrelation`
# [1] 0.07273237
# 
# $`Spearman-Korrelation`
# [1] 0.07819549

function_c(1:5, 3:7)
# $Kovarianz
# [1] 2.5
# 
# $`Pearson-Korrelation`
# [1] 1
# 
# $`Spearman-Korrelation`
# [1] 1

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