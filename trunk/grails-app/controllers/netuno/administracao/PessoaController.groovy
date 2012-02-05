package netuno.administracao

import solar.SolarBaseController;

class PessoaController extends SolarBaseController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Pessoa(atributos)
	}

	def obterInstancia(id){
		Pessoa.get(id)
	}
}
