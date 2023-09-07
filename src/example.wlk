object alambiqueVeloz {
	var combustible = 100
	const velocidadMaxima =250
	
	method reducirCombustible(cantidad){
		combustible = combustible - cantidad
	}
	
	method tanqueLleno(){
		combustible = 100
	}

	method esRapido(){
		return velocidadMaxima>200
	}
}

object luke {
	var recuerdos
	var ubicacion
	var vehiculo = alambiqueVeloz
	const lugares =[paris, buenosAires, bagdad, lasVegas]
	
	method viajarACiudad(ciudad, casa) {
		self.puedeViajar(ciudad)
		casa.nuevoRecuerdo(recuerdo)       
        vehiculo.reducirCombustible(5)
    }
    
    method nuevoRecuerdo(recuerdo){
    	recuerdo.quitarRecuerdo()
    	recuerdo.agregarRecuerdo(recuerdo)
    }
    
    method quitarRecuerdo(){
	     recuerdos.clear()
    }
    
    method agregarRecuerdo(recuerdo){
    	recuerdos.add(recuerdo)
    }
    
    method puedeViajar(){
    	lugares.puedeViajar()
    }
    
    method tanqueLleno(){
    	return vehiculo.tanqueLleno()
	}
	
	method tieneAutoRapido(){
		return vehiculo.velocidadMaxima()
	}
	
	method tieneAutoHorrible(){
		vehiculo.esHorrible()
	}
	
}

object criterioPuedeViajar{
	
	method puedeViajar(luke){
		luke.puedeViajar()
	} 
}



object paris{
	const recuerdo = torreEiffel
	
	method recuerdoDe(){
		return recuerdo
	}
	
	method puedeViajar(luke){
		luke.tanqueLleno()
	}
}

object buenosAires{
	var recuerdo = [mate, mateConYerba]
	var presidente = messi
	
	method recuerdoDe(){
		return recuerdo
	}
	
	method mate(){
		recuerdo = mate
	}
	method yerbaMate(nombre){
		self.presidente(messi)
		recuerdo = mateConYerba		
	}
	
	method puedeViajar(luke){
		luke.tieneAutoRapido()
	}
}

object bagdad{
	
	var recuerdo
	
	method recuerdoDe(){
		return recuerdo
	}
	
	method puedeViajar(){
		return true
	}
}

object lasVegas {
  var recuerdo 
  var eventoActual  
  
  method recuerdoDe() {
    return recuerdo
  }
  
  method conmemorar(evento) {
    eventoActual = evento
  }
  
  method recuerdo(){
  	recuerdo = eventoActual
  }
  
  method puedeViajar(){
  }

object superChatarraEspecial(){
	var velocidadMaxima = 120
	var cantidadDeRuedas = 6
	
	method esRapido(){
		return velocidadMaxima>250
	}
	
	method usarNitro(){
		velocidadMaxima = velocidadMaxima+50
	}
	
	method sumarRuedas(){
		velocidadMaxima = velocidadMaxima - 20
	}
	
	
}

object espantamovil{
	var espantometro = 30
	var butacas = 7
	
	method esHorrible(){
		return espantometro > 70
	}
	
	method barnizDeGrasa(){
		espantometro = espantometro + butacas*3
	}
	
	method todopoderoso(){
		butacas = butacas - 6
	}
}

object villaLaAngostura{
	
	const recuerdo = objetosAnchos
	
	method recuerdoDe(){
		return recuerdo
	}
	
	method puedeViajar(luke){
		luke.tieneAutoHorrible()
	}
}
