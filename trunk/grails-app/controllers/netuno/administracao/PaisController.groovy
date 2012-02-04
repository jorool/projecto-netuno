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
	
	def autocomplete(){
		def paises = Pais.findByNomeLike("${params.term}%")
		
		def d = paises.collect { [id:it.id, label:it.nome] }
		
		render d.encodeAsJSON()
	}
	
}
