
class ProfesionalVinculado {
	var property  universidad
	method cobrar(importe){universidad.recibir(importe/2)}
	method provincias() {return [universidad.provincia()]}
	method honorariosPorHora() {return universidad.honorariosRecomendados()}
}

class ProfesionalAsociado {
	var property universidad
	method cobrar(importe){asociacionDeProfesionalesDelLitoral.recibir(importe)}
	method provincias() {return ["Entre Rios", "Santa Fe", "Corrientes"]}
	method honorariosPorHora() {return 3000}
}

class ProfesionalLibre {
	var property totalRecaudado
	var property universidad
	var property provincias=#{}
	var property honorariosPorHora
	method cobrar(importe){totalRecaudado+=importe}
	method pasarDinero(persona,importe){
		totalRecaudado=totalRecaudado-importe.max(0)
		persona.cobrar(importe)
	}
}

class Universidad{
	var property totalDonaciones
	var property provincia
	var property honorariosRecomendados
	method recibir(importe){totalDonaciones+=importe}
}

object asociacionDeProfesionalesDelLitoral{
	var property totalRecaudado
	method recibir(importe){totalRecaudado+=importe}
}