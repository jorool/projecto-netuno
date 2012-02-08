package solar.taglib

class SolarTagLib {
	static namespace = "sol"
	
	
	/**
	 * Cria uma grid baseada na jquery grid (http://www.trirand.com/blog/)
	 * 
	 * @attr id REQUIRED id da tabela utilizada para o jquery identifica-la
	 * @attr modelo REQUIRED classe de dominio que sera utilizada para popular a tabela (ex: netuno.administracao.Pais)
	 * @attr titulo titulo da grid
	 */
	def jgrid = { attrs, body ->
		
		if(!attrs.id){
			throwTagError("O atributo id da tag jgrid é obrigatório")
		}
		
		if(!attrs.modelo){
			throwTagError("O atributo modelo da tag jgrid é obrigatório")
		}
		
		if(!attrs.titulo){
			attrs.titulo = "" //valor padrão de titulo se ninguem setar nada
		}
		
		def colNames = null
		def colModel = null
		def colArgs = null
		
		def columns = body()?.toString()
		
		
		if(!columns?.trim().isEmpty()){			
			def colunas = Eval.me(columns.toString().split(";\\s*").toString())
			
			colNames = criarColNames(colunas)
			
			colModel = criarColModel(colunas)
			
			colArgs = criaArgColName(colunas)
		}
		
		out << render(template:"/solarTagLib/jgridTemplate", model:[attrs:attrs, colNames:colNames, colModel:colModel, colArgs:colArgs])
		

	}
	
	private String criaArgColName(colunas){
		def args = ""
		colunas.each { col ->
			args += "${col.name};"
		}
		args
	}

	private String criarColModel(colunas) {
		def models = ""
		for(col in colunas){
			models += "{name:'${col.name}',index:'${col.name}',width:${col.width}"
			if(col.align){
				models += ",align:'${col.align}'"
			}
			if(col.sortable){
				models += ",sortable:'${col.sortable}'"
			}
			models +="},\n"
		}

		models = models.substring(0, models.length() - 2) //remove ultima virgula e quebra de linha
		return "colModel:[\n${models}\n],"
	}

	private String criarColNames(colunas) {
		def labels = ""
		for(col in colunas){
			labels += "'${col.label}', "
		}

		labels = labels.substring(0, labels.length() - 2) // remove ultima virgula e espaco

		return "colNames:[${labels}],"
	}
	
	
	/**
	 * Representa uma coluna na tabela jgrid
	 * 
	 * @attr name REQUIRED nome do campo da classe de dominio que ira ser mostrado nessa coluna
	 * @attr label REQUIRED cabeçalho da coluna
	 * @attr width REQUIRED largura da coluna
	 * @attr align se ira alinhar o conteúdo da coluna a esquerda (left) ou a direita (right)
	 * @attr sortable marque como false para que essa coluna não possa ser utilizada para ordenação
	 */
	def column = { attrs ->
		
		if(!attrs.name){
			throwTagError("O atributo name da tag prod:column é obrigatório")
		}
		
		if(!attrs.label){
			throwTagError("O atributo label da tag prod:column é obrigatório")
		}
		
		if(!attrs.width){
			throwTagError("O atributo width da tag prod:column é obrigatório")
		}
		
		def retorno = "[name:'${attrs.name}', label:'${attrs.label}', width:'${attrs.width}'"
		
		if(attrs.align){
			retorno += ", align:'${attrs.align}'"
		}
		
		if(attrs.sortable){
			retorno += ", sortable:'${attrs.sortable}'"
		} 
		
		retorno += "];"
		
		out << retorno
		
	}
	
	
	/**
	 * Botão da biblioteca JQuery UI (http://jqueryui.com/)
	 * 
	 * @attr id REQUIRED id do botão para o jquery identifica-lo
	 * @attr icon classe css para o icone desse botao
	 * @attr controller controle que ira executar a acao ao clicar no botao
	 * @attr action acao do controller
	 * @attr onclick funcao javascript que sera executada ao clicar no botão. O retorno dessa função ira definir o comportamento do botão. Retornando false não ira executar 
	 * a action do controller. Se retornar uma string ou numero sera passado na url da action. Retornando nada ou true a action do controller sera executada normalmente
	 * @attr ajax (true|false) se executara uma operacao em ajax (default: false). Caso true e a funcao onclick retorne um objeto, ele sera passado no campo data para o servidor
	 * @attr method Metodo HTTP para executar no servidor (default: POST) 
	 * @attr onAjaxSuccess Função javascript que sera chamada quando o servidor retornar o ajax com sucesso (pode receber os parametros data, textStatus e xhr) ("http://api.jquery.com/jQuery.ajax/)
	 * @attr onAjaxError Função javascript que sera chamada quando houver um erro do servidor (pode receber o parametro xhr) ("http://api.jquery.com/jQuery.ajax/)
	 */
	def button = { attrs, body ->
		if(!attrs.id){
			throwTagError("O atributo id da tag button é obrigatório")
		}
		
		if(!attrs.method){
			attrs.method = "POST"
		}
		
		out << render(template:"/solarTagLib/buttonTemplate", model:[attrs:attrs, conteudo:body()])	
	
	}
	
	
	/**
	 * Autocomplete da biblioteca JQuery UI (http://jqueryui.com/)
	 * @attr id REQUIRED id do autocomplete para o jquery identifica-lo
	 * @attr controller REQUIRED controller para realizar a busca para preencher o autocomplete
	 * @attr action DEFAULT "autocomplete" qual a ação do controller sera realizada
	 * @attr searchField REQUIRED nome do campo que ira ser realizado a pesquisa
	 * @attr name 
	 * @attr classeCss Classe css do componente
	 * @attr style estilo css do componente
	 */
	def autocomplete = { attrs ->
		
		if(!attrs.id){
			throwTagError("O atributo id da tag button é obrigatório")
		}
		
		if(!attrs.controller){
			throwTagError("O atributo controller da tag button é obrigatório")
		}
		
		if(!attrs.searchField){
			throwTagError("O atributo searchField da tag button é obrigatório")
		}
		
		if(!attrs.action){
			attrs.action = "autocomplete"
		}
		
		out << render (template:"/solarTagLib/autocompleteTemplate", model:[attrs:attrs])
	}
	
	/**
	 * Toolbar para os botões de edição da grid
	 * @attr idGrid REQUIRED id da grid em que os botões vão operar
	 * @attr controller REQUIRED controller para realizar as ações dos botões
	 */
 def toolBarEdicaoGrid = { attrs ->
	 
	 if(!attrs.idGrid){
		 throwTagError("O atributo idGrid da tag toolBarEdicaoGrid é obrigatório")
	 }
	 
	 if(!attrs.controller){
		 throwTagError("O atributo controller da tag toolBarEdicaoGrid é obrigatório")
	 }
	 
	 out << render (template:"/solarTagLib/toolBarEdicaoGrid", model:[attrs:attrs])
 }
 
 /**
 * Toolbar para os botões de edição da grid
 * @attr idForm REQUIRED id da grid em que os botões vão operar
 * @attr controller REQUIRED controller para realizar as ações dos botões
 */
 def toolBarSalvar = { attrs ->
	 
	 if(!attrs.idForm){
		 throwTagError("O atributo idForm da tag toolBarSalvar é obrigatório")
	 }
	 
	 if(!attrs.controller){
		 throwTagError("O atributo controller da tag toolBarSalvar é obrigatório")
	 }
	 
	 
	 out << render (template:"/solarTagLib/toolBarSalvar", model:[attrs:attrs])
 }
 
 /**
  * Pega as mensagens (mensagemErro e mensagemInfo) do flash e exibe para o usuario
  */
 def mensagens = {attrs ->
	 
	 out << render (template:"/solarTagLib/mensagens");
 }
 
 /**
  * Mostra o historico de um registro
  * 
  * @attr idEntidade REQUIRED id do registro que ira buscar o historico
  * @attr modelo REQUIRED classe domain para buscar historico (ex. Pais)
  * 
  */
 def historico = {attrs ->
	 
	 if(!attrs.idEntidade){
		 throwTagError("O atributo idEntidade da tag historico é obrigatório")
	 }
	 
	 if(!attrs.modelo){
		 throwTagError("O atributo modelo da tag historico é obrigatório")
	 }
	 
	 out << render (template:"/solarTagLib/historico", model:[attrs:attrs])
	 
 }
	
}
