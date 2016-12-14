/* 
 * Pintores conocidos 
 */

import contratista.Contratista
import ecuaciones.rounder
import pinturerias.manoEnLaLata // pintureria por defecto

// Codigo para adaptar la parte 1 al nuevo modelo (y que el IDE No me tire errores)

/**
 * Esta clase es para obtener adaptar el codigo de pintores con el de los contratistas 
 */
class Pintor inherits Contratista {
	
	constructor(_nombre) = super(_nombre)
	
	method cotizar(_metrosCuadrados) = 0.0
	
	override method darPresupuesto(_casa) {
		return self.cotizar(_casa.darSuperficie())
	}
}


// Codigo herado y corregido de la parte 1

object raul inherits Pintor("Raul") {
	
	const costoPorMetroCuadrado = 25
	
	var pintureria = manoEnLaLata
	
	method pintureria() = pintureria
	
	method pintureria(_pintureria) {
		pintureria = _pintureria
	}
	
	
	method cotizarManoDeObra(metrosCuadrados) {
		return metrosCuadrados * costoPorMetroCuadrado
	}
	
	override method cotizar(metrosCuadrados) {
		return  self.cotizarManoDeObra(metrosCuadrados) + pintureria.costoPintura(metrosCuadrados)
	}
	
}


object carlos inherits Pintor("Carlos") {

	const superficieMinima = 20 // m²
	const montoMinimo = 500
	const costoAdicional = 30

	override method cotizar(metrosCuadrados) {
		
		if (metrosCuadrados < superficieMinima) {
			return montoMinimo
		} else {
			return montoMinimo + (metrosCuadrados - superficieMinima) * costoAdicional	
		}
		
	} 	
}

object venancio inherits Pintor("Carlos") {
	
	const fraccion = 10 // m²
	const costoFraccion = 220
	
	var pintureria = manoEnLaLata
	
	method pintureria() = pintureria
	
	method pintureria(_pintureria) {
		pintureria = _pintureria
	}
	
	method cotizarManoDeObra(metrosCuadrados ) {
		return rounder.roundUp(metrosCuadrados / fraccion) * costoFraccion
	}
	
	override method cotizar(metrosCuadrados) {
		return self.cotizarManoDeObra(metrosCuadrados ) + pintureria.costoPintura(metrosCuadrados)
	}
}
