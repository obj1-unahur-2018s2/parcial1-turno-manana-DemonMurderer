import profesionales.*
import universidad.*
class EmpresasDeServicio {
	var honorarioDeReferencia = 0
	const empleados = #{}
	const universidadesFormadoras = #{}
	var masCaro = 99999 
	var profesionalesMasCaros = #{}
	var empleadoMasBarato = null
	var provinciasCubiertas = #{}
//	var profesionalPocoAtractivo = null
	method setHonorarioDeReferencia(monto) {honorarioDeReferencia=monto}
	method contratarEmpleados(nombre) {empleados.addAll(nombre)}
	method profesionalesMasCaros() {empleados.forEach({empleado => if (empleado.honorariosPorHora()>honorarioDeReferencia){
		profesionalesMasCaros.add(empleado)
	}})
		return profesionalesMasCaros
	}
	method universidadesFormadoras() {empleados.forEach({empleado => universidadesFormadoras.add(empleado.universidad())})
		return universidadesFormadoras
	}
	method profesionalMasBarato() {empleados.forEach({empleado =>
		if(empleado.honorariosPorHora()<masCaro){
		empleadoMasBarato = empleado
		masCaro=empleado.honorariosPorHora()
	}})
		return empleadoMasBarato
	}
	method profesionalesDeMismaUniversidad(universidad) {return empleados.count({empleado => universidad==empleado.universidad()})}
	method provinciaEstaCubierta(provincias) {provinciasCubiertas = empleados.flatMap({provincia=> provincia.provinciasDondePuedeTrabajar()})
		return provinciasCubiertas.difference(provincias)
	}
}
