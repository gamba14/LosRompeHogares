

object agencia {
	
	const contratistas = new Set() 
		
	method agregarContratista(_contratista){
		
				contratistas.add(_contratista)
				
	}
	
	method puedeContratar(_casa, presupuesto){
		
	}
	
	method removerContratista(_quien){
		
			contratistas.remove(_quien)
		
	}



}