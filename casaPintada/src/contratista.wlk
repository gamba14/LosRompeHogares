

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
	
	constructor(_nombre) {
		nombre = _nombre
	}
	
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

	method nombre() = nombre
}


class Arquitecto inherits Contratista {
	
	var montoPorAmbiente = 100000
	
	constructor(_nombre, _montoPorAmbiente)  = super(_nombre) {

		montoPorAmbiente = _montoPorAmbiente
	}
	
	override method darPresupuesto(_casa) {
		
		return montoPorAmbiente * _casa.pisos()
	}
	
}


class MaestroMObra inherits Contratista {
	 const recargo = 0.2 // 20 %
	 
	 var montoPorAmbiente
	 
	 constructor(_nombre, _montoPorAmbinte) = super(_nombre)  {
	 	montoPorAmbiente = _montoPorAmbinte
	 }
	 
	 override method darPresupuesto(_casa) {
	 	
	 	var precioAmbientes = montoPorAmbiente * _casa.darCantHabitaciones()
	 	
	 	if (_casa.esComplicada()) 
	 		precioAmbientes += precioAmbientes * recargo
	 	
	 	return precioAmbientes
	 }
}


class Albanil inherits Contratista{
	
	const precioHora = 50 // pesos
	const jornadaLaboral = 8 // horas
	
	var diasPorAmbiente
	
	constructor(_nombre, _diasPorAmbiente) = super(_nombre)  {
		
		diasPorAmbiente = _diasPorAmbiente
	}
	
	override method darPresupuesto(_casa){
		
		return _casa.darCantHabitaciones() * diasPorAmbiente * jornadaLaboral * precioHora 
	}
	
}


class Electricista inherits Contratista{
	var montoPorAmbiente
	
	constructor(_nombre, _montoPorAmbiente) = super(_nombre) {
		montoPorAmbiente = _montoPorAmbiente
	}
	
	override method darPresupuesto(_casa){
		
		var monto = _casa.darCantHabitaciones() * montoPorAmbiente
		
		if (_casa.esComplicada())
			monto *= 2 
		
		return monto
		
	}
}


class Plomero inherits Contratista{
	
	const montoPorAmbiente = 100 // pesos
	
	var porcentajeRecargo
	
	constructor(_nombre, _porcentajeRecargo) = super(_nombre) {
		porcentajeRecargo = _porcentajeRecargo
	}
	
	override method darPresupuesto(_casa){
		
		var monto = _casa.darCantHabitaciones() * montoPorAmbiente
		
		if (_casa.pisos() > 2)
			monto += monto * porcentajeRecargo / 100
		
		return monto
	}
}