package netuno.administracao

import org.springframework.dao.DataIntegrityViolationException

class PaisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
       // redirect(action: "list", params: params)
    }

    def _list() {
        //params.max = Math.min(params.max ? params.int('max') : 10, 100)
        //[paisInstanceList: Pais.list(params), paisInstanceTotal: Pais.count()]
    }
	
	def list(){
		render(template: "list")
	}

    def create() {
//        [paisInstance: new Pais(params)]
		
		render(template: "create")
    }


	
    def save() {
        def paisInstance = new Pais(params)
        if (!paisInstance.save(flush: true)) {
			flash.mensagemErro = "Erro ao salvar pais"
            render(view: "_create", model: [paisInstance: paisInstance])
            return
        }

		flash.mensagemInfo = message(code: 'default.created.message', args: [message(code: 'pais.label', default: 'Pais'), paisInstance.id])
        redirect(action: "list")
    }

    def show() {
        def paisInstance = Pais.get(params.id)
        if (!paisInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
            redirect(action: "_list")
            return
        }

        [paisInstance: paisInstance]
    }

	
	
    def edit() {
        def paisInstance = Pais.get(params.id)
        if (!paisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
            redirect(action: "_list")
            return
        }

        [paisInstance: paisInstance]
    }

    def update() {
        def paisInstance = Pais.get(params.id)
        if (!paisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
            redirect(action: "_list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (paisInstance.version > version) {
                paisInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'pais.label', default: 'Pais')] as Object[],
                          "Another user has updated this Pais while you were editing")
                render(view: "edit", model: [paisInstance: paisInstance])
                return
            }
        }

        paisInstance.properties = params

        if (!paisInstance.save(flush: true)) {
            render(view: "edit", model: [paisInstance: paisInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'pais.label', default: 'Pais'), paisInstance.id])
        redirect(action: "show", id: paisInstance.id)
    }
	
//	def delete(){
//		println params;
//		
//		def ret = [msg: "Teste"];
//		
//		redirect(action: 'list')
//		//render ret.encodeAsJSON();
//		
//	}

    def delete() {
		def retorno = [success:true, msg:''];
		
        def paisInstance = Pais.get(params.id)
        if (!paisInstance) {
			retorno.msg =  message(code: 'default.not.found.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
            retorno.success = false;
            
        }else{
	        try {
	            paisInstance.delete(flush: true)
				retorno.msg = message(code: 'default.deleted.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
	            
	        }
	        catch (DataIntegrityViolationException e) {
				retorno.msg = message(code: 'default.not.deleted.message', args: [message(code: 'pais.label', default: 'Pais'), params.id])
				retorno.success = false;
	            
	        }
        }
		
		render retorno.encodeAsJSON();
    }
}
