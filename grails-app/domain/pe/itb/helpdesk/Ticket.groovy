package pe.itb.helpdesk

class Ticket {
	
	String numTicket
	Date fechSolicitud
	String desAsunto
	String flgEstado
	Date dateCreated
	String usuCrea
	Date lastUpdated
	String usuModifica
	
	Cliente cliente

    static constraints = {
		numTicket(maxSize:10, nullable: true, editable:false) 		
    }
	
	static mapping = {
		version false
	}
	
}
