import solar.SolarBaseController;

<%=packageName ? "package ${packageName}\n\n" : ''%>

import solar.SolarBaseController

class ${className}Controller extends SolarBaseController{

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
		def novaInstancia(atributos){
			new ${className}(atributos)
		}
		
		def obterInstancia(id){
			${className}.get(id)
		}
}
