import contratistas2.*
import duenio.*
import agencia.*

class Casa{
	var pisos
	var cantHabitaciones
	
	constructor(_pisos,_habitaciones){
		pisos = _pisos
		cantHabitaciones = _habitaciones
	}
	
	method pisos() = pisos
	
	method darSuperficie(){
		
	}
	
	method darCantHabitaciones() = cantHabitaciones
	
	
	method esComplicada(){
		
		return self.darCantHabitaciones() > 3
		
	}
}