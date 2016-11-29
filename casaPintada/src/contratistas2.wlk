
import casa.*
import duenio.*
import agencia.* 

class Contratista{
	
	//TODO- ver como usar este metodo desde las clases hijas...
	var nombre
	var historial = []
	
	method nombre()= nombre
	
	method nombre(_nombre) {
		nombre = _nombre
	}
		
	method serContratado(_casa,_duenio){
		
		historial.add(_casa)
		
	}
	
	method loTomoDePunto(_cliente){
		
	}
	
	method montoTotal(){
		
	}

}

class CobraPorAmbiente inherits Contratista{
	
	var precioPorAmbiente
	
	constructor(_nombre,_precioPorAmbiente){
		
		nombre = _nombre
		
		precioPorAmbiente = _precioPorAmbiente
		
		
	}
	
	method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente
		
	}
}

class CobraPorAmbienteMasPisos inherits Contratista{
	
	var precioPorAmbiente
	var plusPorPiso
	
	constructor(_nombre,_precioPorAmbiente,_plusPorPiso){
		
		nombre = _nombre
		precioPorAmbiente = _precioPorAmbiente
		plusPorPiso = _plusPorPiso
		
	}
	
	method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente * _casa.pisos()
	}
}