
class Contratista{
	
	var nombre
	var historial = []
	
	method darPresupuesto(_casa){
		
	}
	
	method serContratado(_casa,_duenio){
		
	}
	
	method loTomoDePunto(_cliente){
		
	}
	
	method montoTotal(){
		
	}



}

class Arquitecto inherits Contratista{
	
	var montoPorAmbiente = 100000
	
	override method darPresupuesto(_casa){
		
	}
	
}

class MaestroMObra inherits Contratista{
	 var montoPorAmbiente 
	 
	 override method darPresupuesto(_casa){
	 	
	 }
}

class Albanil inherits Contratista{
	var diasPorAmbiente
	
	override method darPresupuesto(_casa){
		
	}
	
}

class Electricista inherits Contratista{
	var montoPorAmbiente
	
	override method darPresupuesto(_casa){
		
	}
}

class Plomero inherits Contratista{
	var porcentajeRecargo
	
	override method darPresupuesto(_casa){
		
	}
}