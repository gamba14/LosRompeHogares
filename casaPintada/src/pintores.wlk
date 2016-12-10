/* 
 * Pintores conocidos 
 * Se usa polimorfismo pero los objectos no se enteran :V
 * (Ver pinturerias.wlk para mas detalles)  
 */

import contratista.Contratista
import pinturerias.laPintureria 
import ecuaciones.rounder

/**
 * Para obtener a un pintor (objecto) con el adaptado con Pintor (clase) 
 */
object adaptadorPintores {
	
	method adaptarRaul() {
		return new Pintor("Raul", raul)
	}
	
	method adaptarCarlos() {
		return new Pintor("Carlos", carlos)
	}
	
	method adaptarVenancio() {
		return new Pintor("Venancio", venancio)
	}
}

/**
 * Esta clase es para obtener adaptar el codigo de pintores con el de los contratistas
 * El IDE me putea (de varias formas) cuando quiero hacer que los objetos de Contratista 
 */
class Pintor inherits Contratista {
	
	var pintor 
	
	constructor(_nombre, _pintor) = super(_nombre) {
		pintor = _pintor
	} 
	
	override method darPresupuesto(_casa) {
		return pintor.cotizar(_casa.darSuperficie())
	}
}


object raul {
	
	const costoPorMetroCuadrado = 25
	
	method cotizarManoDeObra(metrosCuadrados) {
		return metrosCuadrados * costoPorMetroCuadrado
	}
	
	method cotizar(metrosCuadrados) {
		return  self.cotizarManoDeObra(metrosCuadrados) + laPintureria.costoPintura(metrosCuadrados)
	}
	
}


object carlos  {

	const superficieMinima = 20 // m²
	const montoMinimo = 500
	const costoAdicional = 30

	method cotizar(metrosCuadrados) {
		
		if (metrosCuadrados < superficieMinima) {
			return montoMinimo
		} else {
			return montoMinimo + (metrosCuadrados - superficieMinima) * costoAdicional	
		}
		
	} 	
}

object venancio {
	
	const fraccion = 10 // m²
	const costoFraccion = 220
	
	method cotizarManoDeObra(metrosCuadrados ) {
		return rounder.roundUp(metrosCuadrados / fraccion) * costoFraccion
	}
	
	method cotizar(metrosCuadrados) {
		return self.cotizarManoDeObra(metrosCuadrados ) + laPintureria.costoPintura(metrosCuadrados)
	}
}
