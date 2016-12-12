/* 
 * Helper matematicos
 * Muy "objetivas" las soluciones :V
 */

// codigo heredado de la parte 1

/** objeto que redondea */
object rounder {
    method roundUp(nro){
        return -(nro.div(-1)) 
        // Sí, es feo, por eso queda escondido
        
        /* 
         * En el codigo de wollok (Github) se ve que hay formas para 
         * hacer un redondeo, (int o float).roundUp(int) y (int o float).truncate(int)
         * funcionan en la consola y tambien funciona roundUp()
         * pero no vi ningun test a diferencia de los primeros
         */
    }
}

/** Conocimiento mathematico asociado los pintores de casas */
object pintoresca {
	
	const rendimientoPorLata  = 50 // metros cuadrados
	const rendimientoPorLitro = 1  // metros cuadrados
	
	/** 
	 *  Cantidad de latas para X metros cuadrados 
	 *	Se requiere un numero real como parametro
	 */
	method latasPara(metrosCuadrados) {
		return rounder.roundUp(metrosCuadrados / rendimientoPorLata)
	}
	
	/** 
	 *  Cantidad de litros para X metros cuadrados 
	 *	Se requiere un numero real como parametro
	 */
	method litrosPara(metrosCuadrados) {
		return rendimientoPorLitro * metrosCuadrados 
	}
}