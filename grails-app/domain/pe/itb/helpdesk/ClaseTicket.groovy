package pe.itb.helpdesk

import java.util.Date;

class ClaseTicket {
	
	String codClase
	String desClase
	String flgEstado
	Date dateCreated
	Date lastUpdated
	String usuarioCrea
	String usuarioModifica
	
	ClaseTicket claseTicketSup

    static constraints = {
		
    }
}
