package pe.itb.comunes

import java.util.Date;

class Persona {

    String apePaterno
	String apeMaterno
	String nombre
	String tipDocumento
	String numDocumento
	String flgSexo
	Date fecNacimiento
	String numTelefono
	String desEmail
	String desDireccion
	Date dateCreated
	Date lastUpdated
	String usuarioCrea
	String usuarioModifica
	Ubigeo ubigeo

	static constraints = {
		apePaterno(blank:false, nullable:true, maxSize:40);
		apeMaterno(maxSize:40);
		nombre(blank:false, nullable:true, maxSize:60);
		tipDocumento(inList:['D', 'P', 'C', 'N'], maxSize:1);
		//numDocumento(matches:"[0-9]+", unique:['tipDocumento'], maxSize:9);
		flgSexo(inList:['M', 'F'], maxSize:1, nullable:true);
		fecNacimiento(widget: "datePicker", nullable:true);
		numTelefono(matches:"[0-9]+", maxSize:9, nullable:true);
		desEmail(email:true, maxSize:60, nullable:true);
		desDireccion(maxSize:200, nullable:true);
		ubigeo(blank: true, nullable:true)
		usuarioCrea(nullable:true)
		usuarioModifica(nullable:true)
	}
	
	static mapping = {
		tablePerHierarchy false
	}
}
