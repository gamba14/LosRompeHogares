
/*
 * Ahora No existe una sola agencia, se puede crear tantas como se quieran
 * y cada una puede estar asociadas a distintos contratistas sin que una
 * influya en el comportamiento de la otra
 */

/** El modelo de las Agencias */
class Agencia {
	
	const contratistas = new Set() 
		
	method agregarContratista(_contratista) {
		contratistas.add(_contratista)
	}
	
	method removerContratista(_quien) {
		contratistas.remove(_quien)
	}
	
	method puedeContratar(_cliente){
		return contratistas.filter { contratista => _cliente.puedeContratar(contratista) }
	}
}