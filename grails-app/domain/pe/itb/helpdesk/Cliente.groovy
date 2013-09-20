package pe.itb.helpdesk

import pe.itb.comunes.Persona;

class Cliente extends Persona{

	String codCliente
	
	static hasMany = [tickets:Ticket]	
		
    static constraints = {
    }
	
	String toString(){
		apePaterno + ' ' + apeMaterno + ' ' + nombre
	}
}
