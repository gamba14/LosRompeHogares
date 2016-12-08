
import casa.*
import duenio.*
import agencia.* 

class Contrato {
	var cliente
	var monto
	var contratista
	
	constructor(_cliente, _monto, _contratista) {
		cliente = _cliente
		monto = _monto
		contratista = _contratista
	}
	
	// getters
	method cliente()     = cliente
	method monto()       = monto
	method contratisca() = contratista
	 
}

class Contratista {
	
	var nombre
	var historial = []
	
	method nombre()= nombre
	
	method nombre(_nombre) {
		nombre = _nombre
	}
	
	method darPresupuesto(_casa) = 0.0
		
	method serContratado(_casa,_duenio) {
		
		const contrato = new Contrato(_duenio,  self.darPresupuesto( _casa ), self)
		
		historial.add(contrato)
		
		return contrato
	}
	
	method loTomoDePunto(_cliente){
		const cantidad = historial.filter { 
			contrato =>	contrato.cliente() == _cliente
		} .size()
		
		return cantidad >= 2
	}
	
	method montoTotal(){
		return historial.sum { contrato => contrato.monto() }
	}

}

class CobraPorAmbiente inherits Contratista{
	
	var precioPorAmbiente
	
	constructor(_nombre,_precioPorAmbiente){
		
		nombre = _nombre
		
		precioPorAmbiente = _precioPorAmbiente
		
		
	}
	
	override method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente
		
	}
}

class CobraPorAmbienteMasPisos inherits Contratista{
	
	var precioPorAmbiente
	var plusPorPiso
	
	constructor(_nombre,_precioPorAmbiente,_plusPorPiso) {
		
		nombre = _nombre
		precioPorAmbiente = _precioPorAmbiente
		plusPorPiso = _plusPorPiso
		
	}
	
	override method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * precioPorAmbiente * _casa.pisos()
	}
}