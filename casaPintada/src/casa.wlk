
class Casa {
	var pisos
	var habitaciones = []
	
	constructor(_pisos,_habitaciones){
		pisos        = _pisos
		habitaciones = _habitaciones
	}
	
	method pisos() = pisos
	
	method darCantHabitaciones() {
		return habitaciones.size()
	}
	
	method darSuperficie() {
		return habitaciones.sum { habitacion => return habitacion.superficie() }
	}
	
	method esComplicada(){
		return self.darCantHabitaciones() > 3
	}
}

class Habitacion {
	
	var superficie
	
	constructor(_superficie) {
		superficie = _superficie
	}
	
	method superficie() = superficie 
}

/* 
 * Tiene la misma interfaz que Habitacion pero NO hereda nada de ella. 
 * Gracias el polimorfismo (y al tipado debil) puedo usarla como Habitacion
 * en habitaciones de Casa sin romper nada
 */ 
class CocinaRectangular {
	// Defaults Cocina de aldo
	var largo   // m
	var ancho   // m
	var altura  // m 
	
	constructor(_largo, _ancho, _alto) {
		largo  = _largo
		ancho  = _ancho
	    altura = _alto
	}
	
	method superficie() {
		return (ancho + largo) * 2 * altura
	}
}