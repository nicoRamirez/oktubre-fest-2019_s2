import marca.*
import jarra.*
class Personas {
	var property peso=0 
	const property jarras=[]
	var property leGustaLaMusicTrad
	var property nivelDeAguante=0
	var property origen
	method agregarJarra(jarra){
		jarras.add(jarra)
	}
	method estaEbrio(){
		return self.cantidadAlcoholIngerido() * peso > nivelDeAguante
	}
	method cantidadAlcoholIngerido(){
		return jarras.sum({jarra=>jarra.esDeMarca().porcentAlcohol()})
	}
	method comprarCerveza(carpa){
		self.agregarJarra(carpa.jarra())
	}
	method quiereEntrar(carpa){
		return leGustaLaMusicTrad.leGusta() == carpa.tieneMusica().musica()
	}
	method esPatriota(){
		return jarras.all({jarra=>jarra.esDeMarca().paisOrigen()==origen})
	}
}
class Belgas inherits Personas{
	override method origen(){
		origen= belgica
	}
	method leGusta(cerveza){
		return cerveza.lupudosXLitros() > 4
	}
	override method quiereEntrar(carpa){
		return super(carpa) and
		self.leGusta(carpa.jarra())
	}
}
class Checos inherits Personas{
	override method origen(){
		origen = checoslovaquia
	}
	method leGusta(cerveza){
		return cerveza.porcentAlcohol() > 8
	}
	override method quiereEntrar(carpa){
		return super(carpa) and
		self.leGusta(carpa.jarra())
	}
}
class Alemanes inherits Personas{
	override method origen(){
		origen = alemania
	}
	method leGusta(cerveza){
		return true
	}
	override method quiereEntrar(carpa){
		return super(carpa) and
		self.leGusta(carpa.jarra()) and carpa.ingresantes().size().even()
	}
}
object siLeGusta{
	method leGusta(){
		return true
	}
}

object noLeGusta{
	method leGusta(){
		return false
	}
}