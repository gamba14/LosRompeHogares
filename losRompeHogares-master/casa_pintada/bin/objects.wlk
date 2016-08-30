object aldo{
	var ahorros = 6000
	
	method setAhorro(_dinero){
		ahorros = _dinero
	}
	
	method getAhorro(){
		return ahorros
	}
	
	method getPresupuesto(){
		return 0.2 * ahorros
	}
	
	method getHabitacion(){
		
		return 20.00
	}
	
	method getCocina(){
		return (1.00 + 2.00) * 2.00 * 3.5
	}
}

object raul{
	var esProlijo = true
	var precioPorM2 = 25
	
	method getEsProlijo(){
		return esProlijo
	}
	
	method manoDeObra(_area){
		return precioPorM2 * _area //+ pintura.getPrecioLatas(_area)
	}
	
	method presupuesto(_area){
		return self.manoDeObra(_area) + pintura.getPrecioLatas(_area)
	}
	
}

object carlos{
	var precioMin = 500
	
	method manoDeObra(_area){
		
		if(_area > 20){
			return precioMin + (30 * (_area - 20)) //+ pintura.getPrecioLatas(_area)
		}
		
		return precioMin //+ pintura.getPrecioLatas(_area)
	}
	
	
}

object venancio{
	
	method manoDeObra(_area){
		
		return (rounder.roundUp(_area/10))*220 //+ pintura.getPrecioLatas(_area)
				
	}
	
	method presupuesto(_area){
		
		return self.manoDeObra(_area) + pintura.getPrecioLatas(_area)
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
		
		return rounder.roundUp((_area)/rendimiento)
	}
	
	method getPrecioLatas(_area){
		
		return self.getRendimiento(_area) * precio 
	}
}

object pinturaAGranel{
	var precioPorLitro = 3.50
	var rendimiento = 1
	
	method setPrecio(_precio){
		
		precioPorLitro = _precio
	}
	
	method getRendimiento(_area){
		
		return _area / rendimiento
	}
	
	method getPrecio(_area){
		
		return self.getRendimiento(_area) * precioPorLitro
	}
}
