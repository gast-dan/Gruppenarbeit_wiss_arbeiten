
# dataset_gen - Erstellt ein Dataframe mit basierend auf Zufallszahlen
#               und vorgegebenen Zusammenhaengen zwischen Variablen
#               und speichert dieses als "dataset.csv" ab
#
#             - Input : seed, Wert fuer den seed um die Zufallszahlen
#                       reproduzieren zu koennen
#
#             - Output : erstellt eine csv datei mit Namen "dataset.csv"
#                        im aktuellen working directory

# 2022-01-17 - Daniel Gast: Funktion grundlegend erstellt:
#                             - Alter fertig
#                             - Faecher fertig
#                             - Rest als Platzhalter, Werte werden aktuell
#                               gleichverteilt zufaellig gezogen
#
dataset_gen = function(seed){
  
  set.seed(seed)
  
  # Alter auf ganze Jahre gerundet
  age = round(rnorm(100, mean = 25, sd = 2), 0)
  
  # Faecher mit unterschiedlichen W'keiten
  faecher = c("Statistik", "Data Science", "Mathe", "Informatik")
  faecher_prob = c(0.3, 0.3, 0.28, 0.12)
  fach = sample(faecher, 100, replace = TRUE, prob = faecher_prob)
  
  # Platzhalter, werte werden erstmal nur gleichverteilt gezogen
  interesse_mathe = sample(1:7, 100, replace = TRUE)
  
  # Platzhalter
  interesse_programmieren = vector()
  for(i in 1:100){
    if(fach[i] == "Data Science" || fach[i] == "Informatik"){
      interesse_programmieren[i] = sample(1:7, 1, prob = c(0.1, 0.1, 0.1, 0.15, 0.2 , 0.2, 0.15))
    }
    else{
      interesse_programmieren[i] = sample(1:7, 1, replace = TRUE)
    }
  }
  
  # Platzhalter
  mathe_LK = vector()
  for(i in 1:100){
    mathe_LK[i] = sample(c(0,1), 1, prob = c(0.8-interesse_mathe[i]/10, 0.2 + interesse_mathe[i]/10))
  }
  
  
  
  df = data.frame("Alter" = age, 
                  "Studienfach" = fach,
                  "Interesse_an_Mathematik" = interesse_mathe,
                  "Interesse_an_Programmieren" = interesse_programmieren,
                  "Mathe_LK" = mathe_LK)
  write.csv(df, "dataset.csv")
}

setwd("C:/Users/jonam/Documents/GitHub/Gruppenarbeit_wiss_arbeiten")
dataset_gen(123)
