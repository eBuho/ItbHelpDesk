package pe.itb.comunes

import org.springframework.dao.DataIntegrityViolationException

class UbigeoController {
	def springSecurityService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [ubigeoInstanceList: Ubigeo.list(params), ubigeoInstanceTotal: Ubigeo.count()]
    }

    def create() {
        [ubigeoInstance: new Ubigeo(params)]
    }

    def save() {
        def ubigeoInstance = new Ubigeo(params)
		ubigeoInstance.usuCrea=springSecurityService.principal.username
        if (!ubigeoInstance.save(flush: true)) {
            render(view: "create", model: [ubigeoInstance: ubigeoInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), ubigeoInstance.id])
        redirect(action: "show", id: ubigeoInstance.id)
    }

    def show(Long id) {
        def ubigeoInstance = Ubigeo.get(id)
        if (!ubigeoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "list")
            return
        }

        [ubigeoInstance: ubigeoInstance]
    }

    def edit(Long id) {
        def ubigeoInstance = Ubigeo.get(id)
        if (!ubigeoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "list")
            return
        }

        [ubigeoInstance: ubigeoInstance]
    }

    def update(Long id, Long version) {
        def ubigeoInstance = Ubigeo.get(id)		
        if (!ubigeoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (ubigeoInstance.version > version) {
                ubigeoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'ubigeo.label', default: 'Ubigeo')] as Object[],
                          "Another user has updated this Ubigeo while you were editing")
                render(view: "edit", model: [ubigeoInstance: ubigeoInstance])
                return
            }
        }

        ubigeoInstance.properties = params
		ubigeoInstance.usuModifica=springSecurityService.principal.username
        if (!ubigeoInstance.save(flush: true)) {
            render(view: "edit", model: [ubigeoInstance: ubigeoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), ubigeoInstance.id])
        redirect(action: "show", id: ubigeoInstance.id)
    }

    def delete(Long id) {
        def ubigeoInstance = Ubigeo.get(id)
        if (!ubigeoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "list")
            return
        }

        try {
            ubigeoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'ubigeo.label', default: 'Ubigeo'), id])
            redirect(action: "show", id: id)
        }
    }
}
