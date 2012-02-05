package netuno.estoque

import solar.SolarBaseController;
import netuno.estoque.TipoProduto;

class TipoProdutoController extends SolarBaseController {

	def novaInstancia(atributos){
		new TipoProduto(atributos)
	}
	
	def obterInstancia(id){
		TipoProduto.get(id)
	}
	
}
