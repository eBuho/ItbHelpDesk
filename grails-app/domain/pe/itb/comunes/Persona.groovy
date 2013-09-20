package pe.itb.comunes

class Persona {

    String apePaterno;
	String apeMaterno;
	String nombre;
	String tipDocumento;
	String numDocumento;
	String flgSexo;
	Date fecNacimiento;
	String numTelefono;
	String desEmail;
	String desDireccion;
	Date dateCreated;
	String usuCrea;
	Date lastUpdated;
	String usuModifica;
	Ubigeo ubigeo

	static constraints = {
		apePaterno(blank:false, nullable:true, maxSize:40);
		apeMaterno(maxSize:40);
		nombre(blank:false, nullable:true, maxSize:60);
		tipDocumento(inList:['D', 'P', 'C', 'N'], maxSize:1);
		numDocumento(matches:"[0-9]+", unique:['tipDocumento'], maxSize:9);
		flgSexo(inList:['M', 'F'], maxSize:1);
		fecNacimiento(widget: "datePicker", nullable:true);
		numTelefono(matches:"[0-9]+", maxSize:9);
		desEmail(email:true, maxSize:60);
		desDireccion(maxSize:200);
	}
}
