import duenio.*
import casa.*
import pintores.*
import contratista.*
import agencia.*

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
    
    method emanuel() {
    	return new Arquitecto("Emanuel", 100000)
    }
    
    method marcos() {
    	return new MaestroMObra("Marcos", 50000)
    }
    
    method lito() {
    	return new Albanil("Lito", 2)
    } 
    
    method eduardo() {
    	return new Electricista("Eduardo", 100)
    }
    
    method roger() {
    	return new Plomero("Roger", 10)
    }
    
    method initAgencia() {
    	agencia.reset()
    	agencia.agregarContratista(self.raul())
    	agencia.agregarContratista(self.carlos())
    	agencia.agregarContratista(self.venancio())
    	agencia.agregarContratista(self.emanuel())
    	agencia.agregarContratista(self.marcos())
    	agencia.agregarContratista(self.lito())
    	agencia.agregarContratista(self.eduardo())
    	agencia.agregarContratista(self.roger())
    }
}