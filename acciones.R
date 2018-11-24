calentar <- function(x){
  if(x=="pan"){
    return("pan tostado")
  }else{
    return("se calento "+x)
  }
}

preparar <- function(x,y){
  if(x=="palta"){
    return("palta molida")
  }else if(x=="pan tostado" && y=="palta molida"){
    return("pan tostado con palta")
  }else{
    return("No sé que hacer con "+x+" e "+y)  
  }
  
}

rellenar <- function(x){
  print(x)
  return(x)
}

servir <- function(x){
  print(x)
  return(x)
}

moler <- function(x){
  print(x)
  return(x)
}

cortar <- function(x){
  print(x)
  return(x)
}

calentarSarten <- function(){
  print("calentando")
  return("calentando")
}