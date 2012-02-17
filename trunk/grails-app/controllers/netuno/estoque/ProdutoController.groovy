package netuno.estoque

import grails.converters.JSON;
import solar.SolarBaseController;
import netuno.estoque.Produto;

class ProdutoController extends SolarBaseController {
	
	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Produto(atributos)
	}
	
	def obterInstancia(id){
		Produto.get(id)
	}
	
	def create() {
		render(template: "form", model:[instance:Produto.novoProdutoComCodigo()])
	}
}
