import duenio.*
import casa.*
import pintores.*
import contratista.*
import agencia.*

/** 
 * Helper para intanciasion de objetos para los test y otras utilidades
 */
object fixture {
	
	/**
	 * Casa compliada de 2 pisos y 6 ambientes
	 */
	method casaComplicada() {
		const habitaciones = [
			new Habitacion(21),
			new Habitacion(22),
			new Habitacion(23),
			new Habitacion(24),
			new Habitacion(25),
			new Habitacion(26)
		]
		
		return new Casa(2, habitaciones)
	}
	
	method casaGrande() {
		const habitaciones = [
			new Habitacion(21),
			new Habitacion(22),
			new Habitacion(23),
			new Habitacion(24),
			new Habitacion(25),
			new Habitacion(26),
			new Habitacion(27)
		]
		
		return new Casa(4, habitaciones)
	}
	
	/**
     * Cocina de Aldo
	 */
	method cocinaAldo() {
		return new CocinaRectangular(2, 1, 3.5)
	}
	
	/**
	 * Una Habitacion de Aldo
	 */
	method habitacionAldo() {
		return new Habitacion(20)
	}
	
	/**
	 * Casa de Aldo
	 */
	method casaAldo() {
		const habitaciones = [
			self.habitacionAldo(), 
			self.cocinaAldo()
		]
		
		return new Casa(2, habitaciones)
	}
	
	method aldo() {
		return new Duenio("Aldo", 6000, self.casaAldo())
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
     
    method noelia() {
    	return new Electricista("Noelia", 250)
    }
     
    method silvina() {
     	return new Plomero("Silvina", 25)
    }
     
    method eliana() {
     	return new MaestroMObra("Eliana", 12000)
    }
     
    method dodain() {
     	return new Albanil("Dodain", 3)
    }
    
    method agenciaUNO() {
    	
	   	const agencia = new Agencia()
    	
    	agencia.agregarContratista(self.raul()    )
    	agencia.agregarContratista(self.carlos()  )
    	agencia.agregarContratista(self.venancio())
    	agencia.agregarContratista(self.emanuel() )
    	agencia.agregarContratista(self.marcos()  )
    	agencia.agregarContratista(self.lito()    )
    	agencia.agregarContratista(self.eduardo() )
    	agencia.agregarContratista(self.roger()   )
    	
    	return agencia
    }
    
	method agenciaALFA() {
    	
    	const agencia = new Agencia()
    	
    	agencia.agregarContratista(self.noelia() )
    	agencia.agregarContratista(self.silvina())
    	agencia.agregarContratista(self.eliana() )
    	agencia.agregarContratista(self.dodain() )
    	
    	return agencia
    }
}