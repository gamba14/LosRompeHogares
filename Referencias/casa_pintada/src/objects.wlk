object aldo{
	var ahorros 
	
	method setAhorro(_dinero){
		ahorros = _dinero
	}
	
	method getAhorro(){
		return ahorros
	}
	
	method getPresupuesto(){
		return 0.2 * ahorros
	}
}

object raul{
	var esProlijo = true
	var precioPorM2 = 25
	
	method getEsProlijo(){
		return esProlijo
	}
	
	method presupuesto(_area){
		return precioPorM2 * _area + pintura.getPrecioLatas(_area)
	}
	
}

object carlos{
	var precioMin = 500
	
	method presupuesto(area){
		
		if(area > 20){
			return precioMin + (30 * (area - 20))
		}
		
		return precioMin
	}
}

object venacio{
	
	method presupuesto(_area){
		
		return (rounder.roundUp(_area/10))*220 + pintura.getPrecioLatas(_area)
				
	}
	
}

object rounder {
	method roundUp(nro){
		return -(nro.div(-1)) 
		// Sí, es feo, por eso queda escondido
	}
}

object pintura{
	var precio = 200
	var rendimiento = 50
	
	method setPrecio(_precio){
		precio = _precio
	}
	
	method getRendimiento(_area){
		
		return rounder.roundUp(_area) / rendimiento
	}
	
	method getPrecioLatas(_area){
		
		return (rounder.roundUp(_area * 0.1) * (1/rendimiento) * precio * 10)
	}
}
