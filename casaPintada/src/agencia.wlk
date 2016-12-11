

object agencia {
	
	const contratistas = new Set() 
		
	method agregarContratista(_contratista) {
		contratistas.add(_contratista)
	}
	
	method removerContratista(_quien) {
		contratistas.remove(_quien)
	}
	
	/**
	 * Borra a todos los contratistas de la agencia,
	 * Util en algunos casos de pruebas
	 */
	method reset() {
		contratistas.clear()
	}
	
	method puedeContratar(_cliente){
		return contratistas.filter { contratista => _cliente.puedeContratar(contratista) }
	}
}