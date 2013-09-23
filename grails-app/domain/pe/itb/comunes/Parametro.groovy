package pe.itb.comunes

import java.util.Set;

import pe.itb.seguridad.Rol;

class Parametro {
	
	String codParametro
	String codElemento
	String desParametro
	String valCadena
	int valEntero
	Date valFecha
	Parametro dominio

    static constraints = {
		codParametro()
		codElemento(unique:["codParametro"])
		desParametro()
		valCadena(nullable:true)
		valFecha(nullable:true)
		dominio(nullable:true)
    }
	
	String toString(){
		desParametro
	}
	
	def getParametros() {
		Parametro.findAllByDominio(this)
	}
	
}
