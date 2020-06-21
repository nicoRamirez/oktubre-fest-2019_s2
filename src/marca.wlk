class Marca {
	var property origen
	var property cantLupudo=0 
	
}
class CervRubia inherits Marca{
	var property graduacion=0
}
class CervRoja inherits Marca{
	var property regraGrad=graduacionMundial
	method graduacion(){
		return regraGrad.cant().min(cantLupudo*2)*1.25
	}
}
class CervNegra inherits Marca{
	var property regraGrad=graduacionMundial
	method graduacion(){
		return regraGrad.cant().min(cantLupudo*2)
	}
}
object graduacionMundial{ 
	var property cant=0 
}
object alemania{}
object checoslovaquia{}
object belgica{}