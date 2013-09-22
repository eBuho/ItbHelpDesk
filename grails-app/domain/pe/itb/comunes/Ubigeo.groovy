package pe.itb.comunes

class Ubigeo {

	String codUbigeo
	String desUbigeo
	Date dateCreated
	String usuCrea
	Date lastUpdated
	String usuModifica
	Ubigeo ubigeoSup
	
    static constraints = {
		codUbigeo(blank: false, matches:"[0-9]+" ,maxSize:6, unique:true, nullable: false)
		desUbigeo(blank: false, maxSize:100, nullable: false)
		usuCrea(maxSize:15, blank: true)
		usuModifica(maxSize:15, blank: true, nullable: true)		
		ubigeoSup(blank: true, nullable:true)
    }
	
	String toString(){
		desUbigeo
	}
}
