

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
	
	method darPresupuesto(_casa) = 0.0 // dummy
	
	method serContratado(_casa,_duenio){
		
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

class Arquitecto inherits Contratista {
	
	var montoPorAmbiente = 100000
	
	override method darPresupuesto(_casa){
		
		return montoPorAmbiente * _casa.pisos()
	}
	
}

class MaestroMObra inherits Contratista {
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
		//TODO implementame 
		
		return 0.0 // TODO: change me
	}
	
}

class Electricista inherits Contratista{
	var montoPorAmbiente
	
	override method darPresupuesto(_casa){
		//TODO implementame 
		
		return 0.0 // TODO: change me
		
	}
}

class Plomero inherits Contratista{
	var porcentajeRecargo
	
	override method darPresupuesto(_casa){
		//TODO implementame 
		
		return 0.0 // TODO: change me
	}
}