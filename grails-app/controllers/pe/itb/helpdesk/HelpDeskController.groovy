package pe.itb.helpdesk
import pe.itb.helpdesk.*

class HelpDeskController {

    def index() { 
		redirect action:"principalUsuario"
	}
	
	def bienvenida(){
		render view:"bienvenida"
	}
	
	def principalUsuario(){
		def ticketController = new TicketController()
		ticketController.list2(10)
		render view:"inicioHelpDesk", model:[ticketInstanceList:params.ticketInstanceList,ticketInstanceTotal:params.ticketInstanceTotal]
	}
	
}
