import profesionales.*

class Persona {
	var property provincia
	
	method puedeSerAtendidaPor(profesional) = profesional.provincia() == provincia
	
	}

class Institucion{
	var property universidadesReconocidas = []
	
	method puedeSerAtendidaPor(profesional) = universidadesReconocidas.any({universidad => universidad == profesional.universidad()})
	}