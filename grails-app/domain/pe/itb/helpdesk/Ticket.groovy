package pe.itb.helpdesk

class Ticket {
	
	String numeroDeTicket
	Date fechaDeSolicitud
	String asunto
	String estado
	String descripcion
	Date dateCreated
	Date lastUpdated
	String usuarioCrea
	String usuarioModifica
	static belongsTo = [cliente: Cliente, clase: ClaseTicket]

    static constraints = {
		numeroDeTicket(maxSize:10, nullable: true, editable:false)
		descripcion(widget:"textarea") 		
    }
	
	static mapping = {
		version false
	}
	
}
