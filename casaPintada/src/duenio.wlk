
class Duenio{
	var nombre
	var ahorros
	var presupuesto = 20 // %
	var casa
	
	var historial = []
	
	constructor(_nombre,_ahorros,_casa){
		nombre  = _nombre
		ahorros = _ahorros
		casa    = _casa
	}
	
	constructor(_nombre,_ahorros,_casa, _presupuesto){
		nombre      = _nombre
		ahorros     = _ahorros
		casa        = _casa
		presupuesto = _presupuesto
	}
	
	method nombre() = nombre
	
	method ahorros() = ahorros
	
	method ahorros(_ahorro){ahorros  = _ahorro}
	
	method ahorrar(_monto ){ahorros += _monto }
	
	
	method puedeContratar(_contratista){
		
		return _contratista.darPresupuesto(_casa) < (_ahorros * presupuesto / 100)
		
	}
	
	method contratar(_contratista) {
		
		if (self.puedeContratar(_contratista))
			throw new Exception("No le da el presupuesto para contratar") 
		
		const contrato = _contratista.serContratado(casa, self)
		
		historial.add(contrato)
		
		ahorros -= contrato.monto()
	}
	
	
	method fueDescuidado() {
		// TODO: esto cambia para damian (hacer una sub clase?)
		return historial.any {contrato => contrato.monto() > 5000}
	}
}