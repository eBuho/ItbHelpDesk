package pe.itb.comunes

class Javier {

	String nombre
	String edad
	String apellido
	String sexo
	String direccion
	
    static constraints = {
    }
    
    String toString(){
		nombre + apellido + sexo + direccion
	}
}
