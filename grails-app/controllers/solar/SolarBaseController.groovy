package solar

import org.springframework.dao.DataIntegrityViolationException

class SolarBaseController {

	def springSecurityService
		
	def novaInstancia(atributos){
	}
	
	def obterInstancia(id){
	}
	
	def index(){
	}
	
	def list(){
		render(template: "list")
	}

    def create() {
		render(template: "form")
    }

	protected def salvarObjeto() {
		def instance = novaInstancia(params)
		if (!instance.save(flush: true)) {
			render(template: "form", model: [instance: instance])
			return
		}
		flash.mensagemInfo = message(code: 'default.created.message', args:[message(code: "${this.entityName}.label", default: 'Registro'), instance.id])
		redirect(action: "list")
	}
	
	protected def atualizarObjeto() {
		def instance = obterInstancia(params.id.toLong())
		if (!instance) {
			flash.mensagemErro = message(code: 'default.not.found.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
			redirect(action: "list")
			return
		}

		if (params.version) {
			def version = params.version.toLong()
			if (instance.version > version) { 
				instance.errors.rejectValue("version", "default.optimistic.locking.failure",
						  [message(code: "${this.entityName}.label", default: 'Registro')] as Object[],
						  "Another user has updated this Register while you were editing")
				render(template: "form", model: [instance: instance])
				return
			}
		}
		

		instance.properties = params

		if (!instance.save(flush: true)) {
			render(template: "form", model: [instance: instance])
			return
		}

		flash.mensagemInfo = message(code: 'default.updated.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), instance.id])
		redirect(action: "list")
	}

	
    def save() {
        def id = params.id;
		
		
		if(id != null && !id.trim().isEmpty()){
			atualizarObjeto();
		}else{
			salvarObjeto();
		}
    }

	
	
    def edit() {
        //def paisInstance = Pais.get(params.id.toLong())
		def instance = obterInstancia(params.id.toLong())
        if (!instance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
            redirect(action: "list")
            return
        }

        render(template: "form", model: [instance: instance])
    }

  

    def delete() {
		def retorno = [success:true, msg:''];
		
        def instance = obterInstancia(params.id.toLong())
        if (!instance) {
			retorno.msg =  message(code: 'default.not.found.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
            retorno.success = false;
            
        }else{
	        try {
	            instance.delete(flush: true)
				retorno.msg = message(code: 'default.deleted.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
	            
	        }
	        catch (DataIntegrityViolationException e) {
				retorno.msg = message(code: 'default.not.deleted.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
				retorno.success = false;
	            
	        }
        }
		
		render retorno.encodeAsJSON();
    }
	
	private Class getClassEntity(){
		String classe = getClass().name
		classe = classe.substring(0, classe.indexOf("Controller"))
		
		grailsApplication.classLoader.loadClass(classe)
		
	}
	
	public String getEntityName(){
		Class domainClass = getClassEntity()
		
		domainClass.simpleName.toLowerCase()
	}
	
	def autocomplete(){
		
		def domainClass = getClassEntity()
		
		def hql = "FROM ${domainClass.name} o WHERE o.${params.searchField} like '${params.term}%'"
		
		def entidades = domainClass.findAll(hql)
		
		def d = entidades.collect { [id:it.id, label:it."${params.searchField}"] }
		
		render d.encodeAsJSON()
	}
}
