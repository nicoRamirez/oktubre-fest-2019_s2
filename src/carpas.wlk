import jarra.*
import personas.*
import marca.*
class Carpas {
	var property limiteAdmitido
	var property ingresantes=[]
	var property jarra
	var property tieneMusica
	
	method dejaIngresar(persona){
		return limiteAdmitido > 0 and 
		not persona.estaEbrio()
	}	
	method ingresantes(persona){
		if(self.puedeEntrar(persona) and limiteAdmitido > 0){
			ingresantes.add(persona)
			limiteAdmitido= (limiteAdmitido - 1).max(0)
		}
	}
	method puedeEntrar(persona){
		return self.dejaIngresar(persona) and persona.quiereEntrar(self)
	}
	method ebriosEmperdenidos(){
		return ingresantes.count({persona=>persona.jarra().capXLitros()>1})
	}
	method vendeCerveza(persona){
		if(ingresantes.contains(persona)){
			persona.comprarCerveza(self)
			}
	}
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