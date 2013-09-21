package pe.itb.comunes

class Javier {

	String nombre
	String apellido
	String sexo
	Date fecNacimiento
	String direccion
	
    static constraints = {
    }
    
    String toString(){
		nombre + apellido + sexo + direccion
	}
	
	int edad(){
		//Me falta calcular no se
	}	
	
}
