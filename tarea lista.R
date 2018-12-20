calentar <- function(x){
  if(x=="pan cortado"){
    return("pan tostado")
  }else if(x=="cafe"){
    return("cafe caliente")
  }else{
    return(paste("No se puede calentar",x))
  }
}

preparar <- function(x,y){
  if(x=="pan tostado" && y=="palta molida"){
    return("pan tostado con palta")
  }else if(x=="naranjas cortadas"){
    return("jugo de naranjas")
  }else if((x=="harina" && y=="huevos")||(x=="huevos" && y=="harina")){
return("masa de panqueques")
  }else if((x=="masa de panqueques" && y=="sarten caliente")||(x=="sarten caliente" && y=="masa de panqueques")){
    return("panqueques")
  }else{
    return("No se que hacer con "+x+" e "+y)  
  }
  
}

rellenar <- function(x){
 if(x=="panqueques"){
   return("panqueques rellenos")
 }else{
   return(paste("no se puede rellenar",x))
 }
}

servir <- function(x,y,a,b){
  if((x=="pan tostado con palta" && y=="panqueques rellenos" && a=="jugo de naranjas" && b=="cafe caliente")){
    return("mmmmm... niami... el desayuno esta listo")
 }else{
   return("iugh...esto no esta listo")
}
}
moler <- function(x){
  if(x=="palta cortada"){
  return("palta molida")
  }else{
    return(paste("no se puede moler",x))
  }
}

cortar <- function(x){
    if(x=="naranjas"){
      return("naranjas cortadas")
    }else if(x=="pan"){
      return("pan cortado")
    }else if(x=="palta"){
      return("palta cortada")
    }else{
      return(paste("No se puede cortar",x))
    }
  }

calentarSarten <- function(){
  return("sarten caliente")
}
# Primer Paso: Cortar y moler palta, cortar naranjas y pan:
Cortar("palta")
Moler(Cortar("palta")) 
Cortar("naranjas")
Cortar("pan")

# Segundo Paso: Calentar cafe, preparar el jugo de naranjas, preparar la masa de los panqueques y tostar el pan:
Calentar("cafe") 
Preparar(Cortar("naranjas"))
Preparar("harina","huevos") 
Calentar(Cortar("pan"))  

# Tercer Paso: Preparar el pan con palta,calentar el sarten para preparar panqueques y luego rellenarlos:
Preparar(Moler(Cortar("palta")),Calentar(Cortar("pan"))) 
CalentarSarten()
Preparar(Preparar("harina","huevos"),CalentarSarten ())
Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten())) 

# Cuarto Paso: Servir el pan con palta, los panqueques rellenos, el jugo de naranjas y el cafe caliente:
Servir(Preparar(Calentar(Cortar("pan")),Moler(Cortar("palta"))),Rellenar(Preparar(Preparar("harina","huevos"),CalentarSarten())),Preparar(Cortar("naranjas")),Calentar("cafe"))

