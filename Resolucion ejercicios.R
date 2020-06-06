##Segunda Parte
#Ejercicio 2
#Pasaje de avion 35 veces mayor que al de bus
#Pasaje de bus x hora: $5000. + Al sur: $4000 o Norte: $6000
#Santiago a la Serena - 0,8 hrs en avión y 4 hrs en bus 
#Santiago a Temuco - 3 hrs en avión y 12 en bus 
#Santiago a Arica- 4 hrs en avión y 24 hrs en bus
#Santiago a Punta Arenas - 5 hrs en avión y 56 hrs en bus

ciudad <- "punta arenas"
medioTransporte <- "avion"

if(ciudad=="la serena"){
  if(medioTransporte=="bus"){
    #calculo para el bus
    print("Vacaciones: con destino a la zona norte, pasaje en bus")
    costoPasajeB <- (4*5000)+6000
    print(costoPasajeB)
  }else if(medioTransporte=="avion"){
    #calculo avion
    print("Trabajo: con destino a la zona norte, pasaje en avion")
    costoPasajeA <- (4*5000+6000)*35
    print(costoPasajeA)
  }
}else if(ciudad=="arica"){
  if(medioTransporte=="bus"){
    #calculo para el bus
    print("Vacaciones: con destino a la zona norte, pasaje en bus")
    costoPasajeB <- (24*5000)+6000
    print(costoPasajeB)
  }else if(medioTransporte=="avion"){
    #calculo avion
    print("trabajo: con destino a la zona norte, pasaje en avion")
    costoPasajeA <- (24*5000+6000)*35
    print(costoPasajeA)
  }
}else if(ciudad=="temuco"){
    if(medioTransporte=="bus"){
      #calculo para viaje al sur en bus
      print("Vacaciones: con destino a la zona sur, pasaje en bus")
      costoPasajeB <- (12*5000)+4000
      print(costoPasajeB)
    }else if(medioTransporte=="avion"){
      "calculo viaje al sur en avion"
      print("Trabajo: con destino a la zona sur, pasaje en avion")
      costoPasajeA <- (12*5000+4000)*35
      print(costoPasajeA)
    }
  }else if(ciudad=="punta arenas"){
    if(medioTransporte=="bus"){
      #calculo para viaje al norte en bus
      print("Vacaciones: con destino a la zona sur, pasaje en bus")
      costoPasajeB <- (56*5000)+4000
      print(costoPasajeB)
    }else if(medioTransporte=="avion"){
      #calculo para viaje al norte en avion
      print("Trabajo: con destino al a zona sur, pasaje en avion")
      costoPasajeA <- (56*5000+4000)*35
      print(costoPasajeA)
    }
  }
}


#Ejercicio 3
#Manzana 350 gramos a $400
#Peras 450 gramos a $450
#Garbanzos 600 gramos a $450
#Lentejas 600 gramos a $500
#Paltas 1kg a $1500
#Si se paga en efectivo hay dcto de entre 10% a 40%
#si paga con crédito aumentará el valor entre un 1% y 10%
#otra forma de pago aumenta un %3

kilosM <- 3
kilosPe <- 4
kilosG <- 3
kilosL <- 2
kilosPa <- 3

manzana <- 0.35*kilosM*400
manzana
peras <- 0.45*kilosPe*450
peras
garbanzos <- 0.6*kilosG*450
garbanzos
lentejas <- 0.6*kilosL*500
lentejas
paltas <- 1*kilosPa*1500
paltas

precioLista <- manzana+peras+garbanzos+lentejas+paltas
precioLista

#si cambia un producto de la lista, reemplazar por otro
#si quiero llevar uvas, en vez de manzana, reemplazo los nombres
#ejemplo: list("uvas","peras","garbanzos","lentejas","platanos")
lista <- list("manzana","peras","garbanzos","lentejas","paltas")
lista

#para otro metodo de pago se aplica un 3% sobre la compra
otro <- 0.03

metodoPago <- "efectivo"

if(lista=="manzana" || lista=="peras" || lista=="garbanzos" || lista=="lentejas" || lista=="paltas"){
  if(metodoPago=="efectivo"){
    #cuando metodo de pago es efectivo
    dctoEfectivo <- print(sample(10:40,1,replace = T))
    dctoEfectivo2 <- print(dctoEfectivo/100)
    dctoTotal1 <- print(precioLista*dctoEfectivo2)
    costoTotal1 <- precioLista-dctoTotal1
    print(costoTotal1)
  }else if(metodoPago=="credito"){
    #cuando metodo de pago es credito
    aumenCredito <- print(sample(1:10,1,replace = T))
    aumenCredito2 <- print(aumenCredito/100)
    aumenTotal1 <- print(precioLista*aumenCredito2)
    costoTotal2 <- precioLista+aumenTotal1
    print(costoTotal2)
  }else if(metodoPago=="otro"){
    #cuando metodo de pago es otro
    aumenCosto <- otro
    aumenCosto2 <- print(precioLista*aumenCosto)
    costoTotal3 <- precioLista+aumenCosto2
    print(costoTotal3)
  }
}else{
  paste("No se puede realizar la operacion, ya que hay un articulo del cual no se tiene informacion")
}

