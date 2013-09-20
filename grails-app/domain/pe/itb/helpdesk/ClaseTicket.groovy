package pe.itb.helpdesk

import java.util.Date;

class ClaseTicket {
	
	String codClase
	String desClase
	String flgEstado
	Date dateCreated
	String usuCrea
	Date lastUpdated
	String usuModifica
	
	ClaseTicket claseTicketSup

    static constraints = {
		
    }
}
