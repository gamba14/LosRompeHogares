import duenio.*
import casa.*
import pintores.*

/** 
 * Helper para intanciasion de objetos para los test y otras utilidades
 */
object fixture {
	
	method aldo() {
		const habitaciones = [new Habitacion(20), new CocinaRectangular(2,1,3.5)]
		const casa         = new Casa(2, habitaciones)
		
		return new Duenio("Aldo", 6000, casa)
	}
    
    method raul() {
    	return adaptadorPintores.adaptarRaul()
    }
}