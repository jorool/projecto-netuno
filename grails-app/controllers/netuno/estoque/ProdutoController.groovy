package netuno.estoque

import solar.SolarBaseController;
import netuno.estoque.Produto;

class ProdutoController extends SolarBaseController {

	def novaInstancia(atributos){
		new Produto(atributos)
	}
	
	def obterInstancia(id){
		Produto.get(id)
	}
}
