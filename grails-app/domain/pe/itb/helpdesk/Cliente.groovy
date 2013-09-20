package pe.itb.comunes

class Cliente extends Persona{

	String codCliente
	Date dateCreated
	String usuCrea
	Date lastUpdated
	String usuModifica
	
	static hasMany = [ticket:Ticket]	
	
	
    static constraints = {
    }
	
	String toString(){
		apePaterno + ' ' + apeMaterno + ' ' + nombre
	}
}
