package pe.itb.comunes

class TicketController {

    def scaffold = true
	
	def save() {
		def ticketInstance = new Ticket(params)
		if (!ticketInstance.save(flush: true)) {
			render(view: "create", model: [ticketInstance: ticketInstance])
			return
		}
		//def ticketInstance2 = Ticket.get(ticketInstance.id)		

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'ticket.label', default: 'Ticket'),
			ticketInstance.numTicket
		])
		redirect(action: "show", id: ticketInstance.id)
	}
	
	def show(Long id) {
		def ticketInstance = Ticket.get(id)
		if (!ticketInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'user.label', default: 'User'),
				id
			])
			redirect(action: "list")
			return
		}
		flash.message = message(code: 'default.created.message', args: [
				message(code: 'ticket.label', default: 'Ticket'),
				ticketInstance.numTicket
			])
		[ticketInstance: ticketInstance]
	}
}


