
import casa.*
import duenio.*
import agencia.* 

class Contratista{
	
	var nombre
	var historial = []
	
		
	method serContratado(_casa,_duenio){
		
	}
	
	method loTomoDePunto(_cliente){
		
	}
	
	method montoTotal(){
		
	}

}

class CobraPorAmbiente inherits Contratista{
	
	var precioPorAmbiente
	
	constructor(_precioPorAmbiente){
		
		precioPorAmbiente = _precioPorAmbiente
	}
	
	method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente
		
	}
}

class CobraPorAmbienteMasPisos inherits Contratista{
	
	var precioPorAmbiente
	var plusPorPiso
	
	constructor(_precioPorAmbiente,_plusPorPiso){
		
		precioPorAmbiente = _precioPorAmbiente
		plusPorPiso = _plusPorPiso
		
	}
	
	method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente * _casa.pisos()
	}
}