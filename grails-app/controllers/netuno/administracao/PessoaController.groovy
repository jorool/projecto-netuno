package netuno.administracao

import org.springframework.dao.DataIntegrityViolationException

import solar.SolarBaseController;

class PessoaController extends SolarBaseController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Pessoa(atributos)
	}

	def obterInstancia(id){
		Pessoa.get(id)
	}
	
	def enderecos(){
		
		render(template:"endereco", model:[idPessoa:params.id])
	}
	
	def salvarEndereco(){
		 
		def endereco = null
		
		if(params.id){
			endereco = Endereco.get(params.id.toLong())
			
			if(params.version){
				if(endereco.version > params.version){
					endereco.errors.rejectValue("version", "default.optimistic.locking.failure",
						  [message(code: "${this.entityName}.label", default: 'Registro')] as Object[],
						  "Another user has updated this Register while you were editing")
					render (template:"endereco", model:[endereco:endereco, idPessoa:params.pessoa.id])
					return
				}
			}
			
			endereco.properties = params
			
		}else{
			endereco = new Endereco(params)
		}
		
		if (!endereco.save(flush: true)) {
			render(template: "endereco", model: [endereco: endereco, idPessoa:params.pessoa.id])
			return
		}
		
		
		render(template:"endereco", model:[idPessoa:params.pessoa.id])
		
	}
	
	def listarEndereco(){
		def pessoa = Pessoa.get(params.idPessoa.toLong())
		
		def retorno = pessoa.enderecos.collect{ end ->
			[id:end.id, endereco:end.endereco, numero:end.numero, bairro:end.bairro, cep:end.cep, tipoEndereco:end.tipoEndereco.toString(), cidade:end.cidade.nome]
		}
		
		def resposta = [page:1, total:retorno.size(), records:retorno.size(), rows:retorno].encodeAsJSON()
		
		render resposta
	}
	
	def editarEndereco(){
		
		def endereco = Endereco.get(params.id.toLong())
		
		render(template: "endereco", model: [endereco: endereco, idPessoa:endereco.pessoa.id])
	}
	
	def excluirEndereco(){
		
		def endereco = Endereco.get(params.id.toLong())
		def retorno = [success:true, msg: '']
		try{
			endereco.delete(flush:true)
			retorno.msg = message(code: 'default.deleted.message', args: [message(code: "endereco.label", default: 'Endereço'), params.id])
		}catch(DataIntegrityViolationException e){
			retorno.msg = message(code: 'default.not.deleted.message', args: [message(code: "endereco.label", default: 'Endereço'), params.id])
			retorno.success = false;
		}
		
		render retorno.encodeAsJSON();
		
	}
}
