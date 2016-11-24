/* 
 * Pintores conocidos 
 * Se usa polimorfismo pero los objectos no se enteran :V
 * (Ver pinturerias.wlk para mas detalles)  
 */

import pinturerias.laPintureria 
import ecuaciones.rounder

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