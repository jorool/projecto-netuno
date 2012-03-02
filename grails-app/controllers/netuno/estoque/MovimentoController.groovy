package netuno.estoque

import solar.SolarBaseController;

class MovimentoController extends SolarBaseController {

    def novaInstancia(atributos){
		new Movimento(atributos)
	}
	
	def obterInstancia(id){
		Movimento.get(id)
	}
}
