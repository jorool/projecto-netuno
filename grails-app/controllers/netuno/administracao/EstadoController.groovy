package netuno.administracao

import solar.SolarBaseController

class EstadoController extends SolarBaseController {

   static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Estado(atributos)
	}
	
	def obterInstancia(id){
		Estado.get(id)
	}
}
