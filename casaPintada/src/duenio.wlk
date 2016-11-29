import contratistas2.*
import casa.*
import agencia.*

class Duenio{
	var nombre
	var ahorros
	//var presupuesto = 20
	var casa
	
	constructor(_nombre,_ahorros,_casa){
		nombre = _nombre
		ahorros = _ahorros
		casa = _casa
	}
	
	method nombre() = nombre
	
	method ahorros() = ahorros
	
	method ahorros(_ahorro){ahorros += _ahorro}
	
	method puedeContratar(_contratista){
		
		return _contratista.darPresupuesto(_casa) < (_ahorros * 0.2)
		
	}
	
	method fueDescuidado(){
		
	}
	
	
}