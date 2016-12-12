
/**
 * Representa un contrato (trabajo) realizado 
 * por un contratista para un cliente 
 */
class Contrato {
	var cliente
	var monto
	var contratista
	
	constructor(_cliente, _monto, _contratista) {
		cliente     = _cliente
		monto       = _monto
		contratista = _contratista
	}
	
	// getters
	method cliente()     = cliente
	method monto()       = monto
	method contratista() = contratista
	 
}

/**
 * Sujeto involucrado en un contrato
 * Generalizacion de Duenio y Contratista
 */
class Sujeto {
	
	/** Historial de contratos */
	var contratos = []
	
	method contratos() = contratos
	
}