package pe.itb.comunes

import java.util.Date;

class Ubigeo {

	String codUbigeo
	String desUbigeo
	Date dateCreated
	Date lastUpdated
	String usuarioCrea
	String usuarioModifica
	Ubigeo ubigeoSup
	
    static constraints = {
		codUbigeo(blank: false, matches:"[0-9]+" ,maxSize:6, unique:true, nullable: false)
		desUbigeo(blank: false, maxSize:100, nullable: false)
		usuarioCrea(maxSize:15, blank: true)
		usuarioModifica(maxSize:15, blank: true, nullable: true)		
		ubigeoSup(blank: true, nullable:true)
    }
	
	String toString(){
		desUbigeo
	}
}
