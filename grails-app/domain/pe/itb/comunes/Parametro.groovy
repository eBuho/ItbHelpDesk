package pe.itb.comunes

import java.util.Date;

import pe.itb.seguridad.Rol;

class Parametro {
	
	String codParametro
	String codElemento
	String desParametro
	String valCadena
	int valEntero
	Date valFecha
	Date dateCreated
	Date lastUpdated
	String usuarioCrea
	String usuarioModifica
	static belongsTo = [catalogo: Parametro]

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
