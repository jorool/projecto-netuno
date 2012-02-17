import grails.plugins.springsecurity.SpringSecurityService;
import netuno.administracao.Estado
import netuno.administracao.Pais
import netuno.administracao.PerfilUsuario;
import netuno.administracao.Usuario
import netuno.administracao.UsuarioPerfilUsuario;

class BootStrap {

    def init = { servletContext ->
		/**
		 * TIRAR ESSE CODIGO TODO DAQUI! FOI SOH UM TESTE!
		 */
		
		def SpringSecurityService
		
		def perfilUsuario = PerfilUsuario.findByAuthority("ROLE_USER") ?: new PerfilUsuario(authority:"ROLE_USER", descricao:"Usuário").save()
		def perfilAdministrador = PerfilUsuario.findByAuthority("ROLE_ADMIN") ?: new PerfilUsuario(authority:"ROLE_ADMIN", descricao:"Administrador").save()
		
		def usuarios = Usuario.list() ?: []
		if (!usuarios) {
			def admin = new Usuario(
				username: "admin", 
				password: "netuno",
				enabled: true
				)
			admin.save()
			
			UsuarioPerfilUsuario.create admin, perfilAdministrador
		}
		
		//cria pais Brasil
		if (!Pais.count) {
			new Pais(codigoIBGE: 1, nome: "Brasil").save(failOnError: true)
		}
		//cria estados do Brasil
		if (!Estado.count) {
			def brasil = Pais.findByNome("Brasil")
			new Estado(sigla: "AC", nome: "Acre", pais: brasil, ).save(failOnError: true)
			new Estado(sigla: "AL", nome: "Alagoas", pais: brasil).save(failOnError: true)
			new Estado(sigla: "AM", nome: "Amazonas", pais: brasil).save(failOnError: true)
			new Estado(sigla: "AP", nome: "Amapá", pais: brasil).save(failOnError: true)
			new Estado(sigla: "BA", nome: "Bahia", pais: brasil).save(failOnError: true)
			new Estado(sigla: "CE", nome: "Ceará", pais: brasil).save(failOnError: true)
			new Estado(sigla: "DF", nome: "Distrito Federal", pais: brasil).save(failOnError: true)
			new Estado(sigla: "ES", nome: "Espírito Santo", pais: brasil).save(failOnError: true)
			new Estado(sigla: "GO", nome: "Goiás", pais: brasil).save(failOnError: true)
			new Estado(sigla: "MA", nome: "Maranhão", pais: brasil).save(failOnError: true)
			new Estado(sigla: "MG", nome: "Minas Gerais", pais: brasil).save(failOnError: true)
			new Estado(sigla: "MS", nome: "Mato Grosso do Sul", pais: brasil).save(failOnError: true)
			new Estado(sigla: "MT", nome: "Mato Grosso", pais: brasil).save(failOnError: true)
			new Estado(sigla: "PA", nome: "Pará", pais: brasil).save(failOnError: true)
			new Estado(sigla: "PB", nome: "Paraíba", pais: brasil).save(failOnError: true)
			new Estado(sigla: "PE", nome: "Pernambuco", pais: brasil).save(failOnError: true)
			new Estado(sigla: "PI", nome: "Piauí", pais: brasil).save(failOnError: true)
			new Estado(sigla: "PR", nome: "Paraná", pais: brasil).save(failOnError: true)
			new Estado(sigla: "RJ", nome: "Rio de Janeiro", pais: brasil).save(failOnError: true)
			new Estado(sigla: "RN", nome: "Rio Grande do Norte", pais: brasil).save(failOnError: true)
			new Estado(sigla: "RO", nome: "Rondônia", pais: brasil).save(failOnError: true)
			new Estado(sigla: "RR", nome: "Roraima", pais: brasil).save(failOnError: true)
			new Estado(sigla: "RS", nome: "Rio Grande do Sul", pais: brasil).save(failOnError: true)
			new Estado(sigla: "SC", nome: "Santa Catarina", pais: brasil).save(failOnError: true)
			new Estado(sigla: "SE", nome: "Sergipe", pais: brasil).save(failOnError: true)
			new Estado(sigla: "SP", nome: "São Paulo", pais: brasil).save(failOnError: true)
			new Estado(sigla: "TO", nome: "Tocantins", pais: brasil).save(failOnError: true)
		}
    }
	
    def destroy = {
    }
}
