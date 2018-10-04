import universidad.*

class ProfesionalAsociado {
	var universidad
	var cobrado = 0
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrado() = cobrado
	method cobrado(monto) {cobrado += monto}
	method donar() {asociacion.donaciones(cobrado)
		cobrado = 0
	}
	method recibirDinero(monto) {cobrado+=monto}
}


class ProfesionalVinculado {
	var universidad
	var cobrado = 0
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ } 
	method provinciasDondePuedeTrabajar() {return universidad.provincia()}
	method honorariosPorHora() {return universidad.honorariosPorHora()}
	method cobrado() = cobrado
	method cobrado(monto) {cobrado += monto}
	method donar() {
		cobrado=cobrado/2
		universidad.donaciones(cobrado)
	}
	method recibirDinero(monto) {cobrado+=monto}
}


class ProfesionalLibre {
	var universidad
	const provincias = #{}
	var honorarios = 0
	var cobrado = 0
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method addProvincias(provincia) {provincias.add(provincia)}
	method provinciasDondePuedeTrabajar() = provincias
	method setHonorarios(_honorario) {honorarios=_honorario}
	method honorariosPorHora() = honorarios
	method cobrado() = cobrado
	method cobrado(monto) {cobrado += monto}
	method pasarDinero(monto, persona) {persona.recibirDinero(monto)
		cobrado -= monto
	}
	method recibirDinero(monto) {cobrado+=monto}
}
