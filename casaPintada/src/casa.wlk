
/*
 * Ahora 'Casa' NO estan asociadas a una solo casa en concreto (casa de aldo)
 * y puede representar gran variedad de casas, lo que permite evitar modelar
 * particularmente cada casa nueva que se agregue al sistema
 */

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

/*
 * Habitacion ahora es mas generico
 */

class Habitacion {
	
	var superficie
	
	constructor(_superficie) {
		superficie = _superficie
	}
	
	constructor(_largo, _ancho, _alto) {
		superficie = (_ancho + _largo) * 2 * _alto
	}
	
	method superficie() = superficie 
}
