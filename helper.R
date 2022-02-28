# Name ist Platzhalter!
categories = function(data, quantiles){
  
  new_data = c()
  new_data[data <= quantiles[[2]]] = "niedrig"
  new_data[data > quantiles[[2]] & data < quantiles[[length(quantiles)-1]]] = "mittel"
  new_data[data >= quantiles[[length(quantiles)-1]]] = "hoch"
  
  
  return(new_data)
}
