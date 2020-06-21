import marca.*
class Jarra {
	var property esDeMarca
	var property capXLitros=0
	method contAlcohol(){
		return capXLitros * esDeMarca.porcentAlcohol()
	}
}

