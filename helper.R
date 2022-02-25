# Name ist Platzhalter!
categories = function(data, quantiles){
  
  new_data = c()
  new_data[data <= quantiles[[2]]] = "niedrig"
  new_data[data >= quantiles[[length(quantiles)-2]]] = "hoch"
  new_data[is.na(new_data)] = "mittel"
  
  return(new_data)
}