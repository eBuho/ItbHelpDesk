package pe.itb.helpdesk

import org.springframework.dao.DataIntegrityViolationException

class TicketController {
	
	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def list(Integer max) {				
		params.max = Math.min(max ?: 10, 100)
		[ticketInstanceList: Ticket.list(params), ticketInstanceTotal: Ticket.count()]
	}
	
    def list2(Integer max) {
		def usuario = springSecurityService.principal.username
        params.max = Math.min(max ?: 10, 100)
        def ticketInstanceList = Ticket.list(params)		
		ticketInstanceList = Ticket.findAllByUsuarioCrea(usuario)
		def ticketInstanceTotal = Ticket.count()
		def contEstado = contador()
		params.ticketInstanceList = ticketInstanceList
		params.ticketInstanceTotal = ticketInstanceTotal
		params.cont = contEstado
		
		//render template:"list", model:[ticketInstanceList:ticketInstanceList, ticketInstanceTotal:ticketInstanceTotal]
    }

    def create() {
        //[ticketInstance: new Ticket(params)]
		def ticketInstance = new Ticket(params)
		ticketInstance.usuarioCrea=springSecurityService.principal.username
		[ticketInstance: ticketInstance]
    }

    def save() {
        def ticketInstance = new Ticket(params)
		ticketInstance.usuarioCrea=springSecurityService.principal.username
		
        if (!ticketInstance.save(flush: true)) {
            render(view: "create", model: [ticketInstance: ticketInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ticket.label', default: 'Ticket'), ticketInstance.id])
        redirect(action: "show", id: ticketInstance.id)
    }

    def show(Long id) {
        def ticketInstance = Ticket.get(id)
        if (!ticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "list")
            return
        }

        [ticketInstance: ticketInstance]
    }

    def edit(Long id) {
        def ticketInstance = Ticket.get(id)
        if (!ticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "list")
            return
        }
		
		ticketInstance.usuarioModifica=springSecurityService.principal.username
        [ticketInstance: ticketInstance]
    }

    def update(Long id, Long version) {
        def ticketInstance = Ticket.get(id)
        if (!ticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ticketInstance.version > version) {
                ticketInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ticket.label', default: 'Ticket')] as Object[],
                          "Another user has updated this Ticket while you were editing")
                render(view: "edit", model: [ticketInstance: ticketInstance])
                return
            }
        }

        ticketInstance.properties = params
		ticketInstance.usuarioModifica=springSecurityService.principal.username

        if (!ticketInstance.save(flush: true)) {
            render(view: "edit", model: [ticketInstance: ticketInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ticket.label', default: 'Ticket'), ticketInstance.id])
        redirect(action: "show", id: ticketInstance.id)
    }

    def delete(Long id) {
        def ticketInstance = Ticket.get(id)
        if (!ticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "list")
            return
        }

        try {
            ticketInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ticket.label', default: 'Ticket'), id])
            redirect(action: "show", id: id)
        }
    }
	
	def buscar(){
		def estado = params.id
		def usuario = springSecurityService.principal.username
		def ticketInstanceList		
		if (estado ==  "T"){
			ticketInstanceList = Ticket.findAllByUsuarioCrea(usuario)
		}
		else{
			ticketInstanceList = Ticket.findAllByEstadoAndUsuarioCrea(estado, usuario)
		}
		def ticketInstanceTotal = ticketInstanceList.size()
		def contEstado = contador()
		//render(view: "/helpdesk/inicioHelpDesk",controller:"HelpDesk", model: [ticketInstanceList: ticketInstanceList,ticketInstanceTotal: ticketInstanceTotal])
		render template:"list", model:[ticketInstanceList:ticketInstanceList, ticketInstanceTotal:ticketInstanceTotal, cont:contEstado]
	}	
	
	def contador(){
		def usuario = springSecurityService.principal.username
		def ticketInstanceList
		def cont	
		def contEstado = [:]
		["T", "P", "R", "E"].each{estado ->
			if (estado == "T"){
				ticketInstanceList = Ticket.findAllByUsuarioCrea(usuario)	
			}
			else{
				ticketInstanceList = Ticket.findAllByEstadoAndUsuarioCrea(estado, usuario)
			}
			cont = ticketInstanceList.size()
			contEstado[estado] = cont			
		}
		return contEstado	
	}
		
}
