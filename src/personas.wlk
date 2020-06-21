import marca.*
import jarra.*
class Persona{
	var property peso=0
	var property jarrasCompr=[]
	var property leGustMusic
	var property aguante=0
	method estaEbria(){
		return self.totalIngerido()*peso>aguante
	}	
	method jarrasCompr(jarra){
		jarrasCompr.add(jarra)
	}
	method totalIngerido(){
		return jarrasCompr.sum({jarra=>jarra.cantAlcohol()})
	}
	method entrar(carpa){
		carpa.ingresantes(self)
	}
	method leSirve(carpa){
		if(carpa.estaEnCarpa(self)){carpa.leVendeA(self)
		self.jarrasCompr(carpa.jarra()) }
		else{carpa.msjNoEsta()}
	}
}
class Belgas inherits Persona{
	const property nacionalidad=belgica
	method marcaLeGusta(jarra){
		return jarra.marca().cantLupudo() > 4 and jarra.tamanio().capac() == 1
	}	
	method quiereEntrar(carpa){
		return self.marcaLeGusta(carpa.jarra()) and 
		carpa.bandaMusic().musica()== leGustMusic.leGusta()
	}
	method esPatriota(){
		return jarrasCompr.all({jarra=>jarra.marca().origen()==nacionalidad })
	}
}
class Checos inherits Persona{
	const property nacionalidad=checoslovaquia
	method marcaLeGusta(jarra){
		return jarra.marca().graduacion() > 0.8
	}
	method quiereEntrar(carpa){
		return self.marcaLeGusta(carpa.jarra()) and 
		carpa.bandaMusic().musica()== leGustMusic.leGusta()
	}
	method esPatriota(){
		return jarrasCompr.all({jarra=>jarra.marca().origen()==nacionalidad })
	}
}
class Alemanes inherits Persona{
	const property nacionalidad=alemania
	method marcaLeGusta(jarra){
		return true
	}
	method quiereEntrar(carpa){
		return self.marcaLeGusta(carpa.jarra()) and 
		carpa.bandaMusic().musica()== leGustMusic.leGusta() and 
		carpa.capacActual() / 2 == 0
	}
	method esPatriota(){
		return jarrasCompr.all({jarra=>jarra.marca().origen()==nacionalidad })
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