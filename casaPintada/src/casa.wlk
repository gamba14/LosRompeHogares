
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
		return habitaciones.sum { habitacion => habitacion.superficie() }
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