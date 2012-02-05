package netuno.estoque

import solar.SolarBaseController;
import netuno.estoque.TipoMovimento;

class TipoMovimentoController extends SolarBaseController {

	def novaInstancia(atributos){
		new TipoMovimento(atributos)
	}
	
	def obterInstancia(id){
		TipoMovimento.get(id)
	}
}
