import duenio.*
import casa.*
import pintores.*

/** 
 * Helper para intanciasion de objetos para los test y otras utilidades
 */
object fixture {
	
	method cocinaAldo() {
		return new CocinaRectangular(2,1,3.5)
	}
	
	method habitacionAldo() {
		return new Habitacion(20)
	}
	
	method aldo() {
		const habitaciones = [self.habitacionAldo(), self.cocinaAldo()]
		const casa         = new Casa(2, habitaciones)
		
		return new Duenio("Aldo", 6000, casa)
	}
    
    method raul() {
    	return adaptadorPintores.adaptarRaul()
    }
    
    method carlos() {
    	return adaptadorPintores.adaptarCarlos()
    }
    
    method venancio() {
    	return adaptadorPintores.adaptarVenancio()
    }
}