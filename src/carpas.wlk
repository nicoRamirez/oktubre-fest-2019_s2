import jarra.*
import personas.*
import marca.*
class Carpas{
	const property capacidad=50
	var property bandaMusic	
	var property ingresantes=[]
	var property jarra
	method capacActual(){
		return ingresantes.size()
	}
	method dejarEntrar(persona){
		return self.capacActual() < capacidad and 
		not persona.estaEbria()
	}
	method puedeEntrar(persona){
		return self.dejarEntrar(persona) and persona.quiereEntrar(self)
	}
	method msjNoIngrese(){
		const msj="usted no puede entrar intente mas tarde"
		return msj
	}
	method msjNoEsta(){
		const msj2="usted no se encuentra en la carpa"
		return msj2
	}
	method ingresantes(persona){
		if(self.puedeEntrar(persona)){
		ingresantes.add(persona)} else{  self.msjNoIngrese()}
	}
	method leVendeA(persona){
		return jarra.tamanio() and jarra.marca()	
	}
	method estaEnCarpa(persona){
		return ingresantes.contains(persona)
	}
	method homerosSimpson(){
		return ingresantes.count({persona=>persona.estaEbria()})
	}
	
}
class CarpaRubia inherits Carpas{

}
class CarpaNegra inherits Carpas{
	
}
class CarpaRoja inherits Carpas{
	
}

object conBandaMusica{
	method musica(){
		return true
	}
}
object sinBandaMusica{
	method musica(){
		return false
	}
}