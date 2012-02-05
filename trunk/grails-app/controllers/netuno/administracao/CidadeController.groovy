package netuno.administracao

import solar.SolarBaseController;
import netuno.administracao.Cidade;

class CidadeController extends SolarBaseController {

	def novaInstancia(atributos){
		new Cidade(atributos)
	}
	
	def obterInstancia(id){
		Cidade.get(id)
	}
 
}
