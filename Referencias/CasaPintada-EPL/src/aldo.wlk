
/* Todo lo referente a Aldo */

object aldo {
	
	const porcentajeDisponible = 0.20

	var ahorros = 6000 // pesos
	
	/** 
	 * Lista de las habitaciones que se requieren pintar  
	 *
	 * En este caso se usa el polimorfismo para almacenar distintos objetos 
	 * que responden al mensaje superficieAPintar() para luego ser usados, 
	 * covenientemente, en superficieAPintar() de Aldo. 
	 * Mientras los objetos cumplan con esa condicion se puede agregar todas las
	 * habitaciones que uno quiera y NO va a ser necesario reescribir codigo.
	 */
	var habitacionesAPintar = [habitacion, cocina] // habitaciones polimorficas :V
	
	method superficeAPintar() {
		// me siento muy funcional :V
		// que poli morfi co :V
		return habitacionesAPintar.map({it => it.superficieAPintar()}).fold(0, {x, y => x + y })
	}
	
	method presupuesto() {
		return ahorros * porcentajeDisponible
	}
	
	method puedeContratarAlPintor(pintor) {
		return pintor.cotizar(self.superficeAPintar()) <= self.presupuesto()
	}
	
	/* Accessors cosa */
	
	method ahorros() {
		return ahorros
	}
	
	method ahorros(nuevo) {
		ahorros = nuevo
	}
	
	method habitacionesAPintar() {
		return habitacionesAPintar
	}
	
	method habitacionesAPintar(nuevo) {
		habitacionesAPintar = nuevo
	}

}

object habitacion {
	const superficieAPintar = 20 // m² 
	
	method superficieAPintar() {
		return superficieAPintar
	}
}

object cocina {
	const largo  = 2   // m
	const ancho  = 1   // m
	const altura = 3.5 // m 
	
	method superficieAPintar() {
		return (ancho + largo) * 2 * altura
	}
}