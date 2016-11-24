import casa.*
import duenio.*
import agencia.* 

class Contratista{
	
	var nombre
	var historial = []
	
	method darPresupuesto(_casa){
		
		return true
	}
	
	method serContratado(_casa,_duenio){
		
	}
	
	method loTomoDePunto(_cliente){
		
	}
	
	method montoTotal(){
		
	}



}

class Arquitecto inherits Contratista{
	
	var montoPorAmbiente = 100000
	
	override method darPresupuesto(_casa){
		
		return montoPorAmbiente * _casa.pisos()
	}
	
}

class MaestroMObra inherits Contratista{
	 var montoPorAmbiente = 50000
	 var precioAmbientes
	 
	 override method darPresupuesto(_casa){
	 	
	 	precioAmbientes = montoPorAmbiente * _casa.darCantHabitaciones()
	 	
	 	if(_casa.esComplicada()){
	 		return precioAmbientes += precioAmbientes * 0.2
	 	}
	 	
	 	return precioAmbientes
	 	
	 	
	 }
}

class Albanil inherits Contratista{
	var diasPorAmbiente
	
	override method darPresupuesto(_casa){
		
	}
	
}

class Electricista inherits Contratista{
	var montoPorAmbiente
	
	override method darPresupuesto(_casa){
		
	}
}

class Plomero inherits Contratista{
	var porcentajeRecargo
	
	override method darPresupuesto(_casa){
		
	}
}