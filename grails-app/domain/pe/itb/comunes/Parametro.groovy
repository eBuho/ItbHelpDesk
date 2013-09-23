package pe.itb.comunes

import pe.itb.seguridad.Rol;

class Parametro {
	
	String codParametro
	String codElemento
	String desParametro
	String valCadena
	int valEntero
	Date valFecha
	Parametro catalogo

    static constraints = {
		codParametro()
		codElemento(unique:["codParametro"])
		desParametro()
		valCadena(nullable:true)
		valFecha(nullable:true)
		catalogo(nullable:true)
    }
	
	String toString(){
		desParametro
	}
	
	def getParametros() {
		Parametro.findAllByCatalogo(this)
	}
	
}
