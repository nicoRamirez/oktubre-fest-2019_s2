class Marca {
	var property lupudosXLitros=0
	var property paisOrigen
	
}

class CervezaRubia inherits Marca{
	var property porcentAlcohol
}

class CervezaNegra inherits Marca{
	var property graduacionReglamentaria=graduacionMundial
	 method porcentAlcohol(){
		return graduacionReglamentaria.cant().min(self.lupudosXLitros())
	}
}

class CervezaRoja inherits Marca{
	var property graduacionReglamentaria=graduacionMundial
	method porcentAlcohol(){
		return graduacionReglamentaria.cant().min(self.lupudosXLitros()*2) * 1.25
	}
}
object graduacionMundial{
	var property cant=0
}
object alemania{}
object checoslovaquia{}
object belgica{}