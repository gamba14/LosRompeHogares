

object agencia {
	
	const contratistas = new Set() 
		
	method agregarContratista(_contratista) {
		contratistas.add(_contratista)
	}
	
	method removerContratista(_quien) {
		contratistas.remove(_quien)
	}
	
	method puedeContratar(_casa, _cliente){
		return contratistas.filter { contratista => _cliente.puedeContratar(contratista) }
	}

}