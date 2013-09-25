package itbhelpdesk

class HelpDeskController {

    def index() { 
		redirect action:"principalUsuario"
	}
	
	def bienvenida(){
		render view:"bienvenida"
	}
	
	def principalUsuario(){
		render view:"inicioHelpDesk"
	}
}
