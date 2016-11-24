/* 
 * Todo lo referido a puntuerias
 * No hay clases en la teoria toadavia :V 
 */

import ecuaciones.pintoresca

/** 
 * La pintureria a que todos se refieren cuando dicen "la pintureria"
 * Objeto que unifica la interfaces entre pinturerias
 * Garantiza que, por defecto, el objecto NO genere excepciones de esta forma
 */
object laPintureria {
	
	const porDefecto = manoEnLaLata 
	
	/** 
	 * La pintureria referida en el contexto actual, cuando se el pide costo
	 *
	 * En este caso usa polimorfismo para brindar un acceso unifomerme a los
	 * pintores y a Aldo le permite cambiar la forma en que se compra la pintura,
	 * en latas o a granel, sin tener que conocer la interfaz de los pintores
	 * inbolucrados
	 */
	var pintureria = porDefecto // Contexto polimorfico :V
	
	method costoPintura (metrosCuadrados) {
		return pintureria.costoPintura(metrosCuadrados)
	}
	
	method cantidadDeLatas(metrosCuadrados) {
		return pintoresca.latasPara(metrosCuadrados)
	}
	
	/* Accessors cosa */
	
	method pintureria(nueva) {
		pintureria = nueva
	}
	
	method pintureria() {
		return pintureria
	}
	
	method porDefecto() {
		return porDefecto
	}
}

/** 
 * Pintureria que vende pintura por litro 
 * y hace refencia a la cultura popular  
 */
object manoEnLaLata {
	
	var costoLata = 200 // pesos

	method costoPintura(metrosCuadrados) {
		return pintoresca.latasPara(metrosCuadrados) * costoLata
	}

	/* Accessors cosa */
	
	method costoLata(nuevo) {
		costoLata = nuevo
	}
	
	method costoLata() {
		return costoLata
	}

}

/**
 * Pintureria que vende pintura a granel
 * y los dueños creen en el taoismo(¿?) 
 */
object todoFluye {

	var costoPorLitro = 3.50 // pesos
	
	method costoPintura(metrosCuadrados) {
		return pintoresca.litrosPara(metrosCuadrados) * costoPorLitro
	}
	
	/* Accessors cosa */
	
	method costoPorLitro() { 
		return costoPorLitro	
	}
	
	method costoPorLitro(nuevo) {
		costoPorLitro =  nuevo
	}
}
