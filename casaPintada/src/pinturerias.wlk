/* 
 * Todo lo referido a puntuerias
 */
 
 // Codigo heredado y corregido de la parte 1

import ecuaciones.pintoresca


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
