package netuno.administracao

import org.springframework.dao.DataIntegrityViolationException

import solar.SolarBaseController;


class PaisController extends SolarBaseController{

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Pais(atributos)
	}
	
	def obterInstancia(id){
		Pais.get(id)
	}
	
}
