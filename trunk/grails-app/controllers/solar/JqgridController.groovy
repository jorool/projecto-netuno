package solar

import netuno.administracao.Pais

class JqgridController {

    def index() { }
	
	def list(){
		def classe =grailsApplication.classLoader.loadClass(params.modelo)
		

		
		def max = Integer.parseInt(params.rows)
		
		def offset = (Integer.parseInt(params.page) - 1) * max
		
		def records = new ArrayList()
		
		def total = 0
		
		if(params._search == "true"){
			
			def operador = selecionaOperador(params)
			
			String from = criaFrom(operador, params)
			
			Long totalValores = classe.executeQuery("select count(o) ${from}")[0]
			
			String order = "order by ${params.sidx} ${params.sord}"
			
			String hql = "${from} ${order}"
			
			records = classe.findAll(hql, [max: max, offset:offset])
			total = Math.ceil(totalValores / Double.parseDouble(params.rows))
		}else{
			records = classe.list(max: max, offset:offset, sort:params.sidx, order:params.sord)
			total = Math.ceil(classe.count() / Double.parseDouble(params.rows))
		}

		def colunas = params.colunas.split(";")
		
		
		
		
		def retorno  = records.collect { rec ->
			def obj = [:]
			
			colunas.each { col ->
				obj.put(col, getProperty(rec, col))
			}
			
			obj.id = rec.id
		
			obj
		} 
		
		
		
		def resposta = [page:"${params.page}", total:"${total}", records:records.size(), rows:retorno].encodeAsJSON()
		
	    render resposta
		
	}
	
	private def getProperty(obj, String str){
		if(str.contains(".")){
			def par = str.split("\\.");
			def ret = obj
			par.each {
				ret = ret."${it}"
			}
			
			return ret
		}
		
		
		def ret = obj."${str}"
		
		return ret
	}

	private String criaFrom(String operador, Map params) {
		String from = ""

		switch(params.searchOper){
			case 'nu':
			case 'nn':
				from = "from ${params.modelo} o where o.${params.searchField} ${operador}"
				break
			case 'in':
			case 'ni':
				from = "from ${params.modelo} o where o.${params.searchField} ${operador} (${params.searchString})"
				break
			default:
				from = "from ${params.modelo} o where o.${params.searchField} ${operador} '${params.searchString}'"
		}
		return from
	}

	private String selecionaOperador(Map params) {
		String operador = "="

		switch(params.searchOper){
			case 'ne' :
				operador = "!="
				break
			case 'bw' :
				operador = "like"
				params.searchString = params.searchString + "%"
				break
			case 'bn' :
				operador = "not like"
				params.searchString = params.searchString + "%"
				break;
			case 'ew' :
				operador = "like"
				params.searchString = "%" + params.searchString
				break
			case 'en' :
				operador = "not like"
				params.searchString = "%" + params.searchString 
				break
			case 'cn' :
				operador = "like"
				params.searchString = "%" + params.searchString + "%"
				break
			case 'nc' :
				operador = "not like"
				params.searchString = "%" + params.searchString + "%"
				break
			case 'nu' :
				operador = "= null"
				break
			case 'nn' :
				operador = "is not null"
				break
			case 'in' :
				operador = 'in'
				break
			case 'ni' :
				operador = 'not in'
				break
		}
		
		return operador;
	}
}
