import profesionales.*
import empresas.*
class Universidad {
	var provincia = #{}
	var honorarios = 0
	var donaciones = 0
	method setProvincia(_provincia) {provincia.add(_provincia)}
	method provincia() = provincia
	method setHonorarios(_honorarios) {honorarios = _honorarios}
	method honorariosPorHora() =  honorarios
	method donaciones(donar) {donaciones = donar}
	method donaciones() = donaciones
}
object asociacion {
	var donaciones = 0
	method donaciones(donar) {donaciones = donar}
	method donaciones() = donaciones
}
