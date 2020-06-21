import marca.*
class Jarra{
	var property marca
	var property tamanio
	method cantAlcohol(){
		return tamanio.capac()*marca.graduacion()
	}
}

object small{
	method capac(){
		return 0.50
	}
}
object medium{
	method capac(){
		return 0.75
	}
}
object large{
	method capac(){
		return 1
	}
}
object extraLarge{
	method capac(){
		return 1.5
	}
}