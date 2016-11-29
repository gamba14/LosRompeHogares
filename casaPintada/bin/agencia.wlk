import casa.*
import duenio.*
import contratistas2.* 

object agencia {
	
	const contratistas = new Set() 
		
	method agregarContratista(_contratista){
		
				contratistas.add(_contratista)
				
	}
	
	method puedeContratar(_casa){
		
	}
	
	method removerContratista(_quien){
		
			contratistas.remove(_quien)
		
	}



}