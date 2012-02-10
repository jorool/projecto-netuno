package netuno.administracao

import solar.SolarBaseController;

class UsuarioController extends SolarBaseController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Usuario(atributos)
	}

	def obterInstancia(id){
		Usuario.get(id)
	}
}
