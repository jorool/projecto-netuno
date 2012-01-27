import projecto.netuno.administracao.Estado
import projecto.netuno.administracao.Pais
import projecto.netuno.administracao.Usuario

class BootStrap {

    def init = { servletContext ->
		/**
		 * TIRAR ESSE CODIGO TODO DAQUI! FOI SOH UM TESTE!
		 */
		//cria usuario admin
		if (!Usuario.findWhere(login:'admin')) {
			new Usuario(nome: "admin", login: "admin", senha: "admin", email: "admin@admin.com").save(failOnError: true)
		}
		
		//cria pais Brasil
		if (!Pais.count) {
			new Pais(codigoIBGE: 1, nome: "Brasil").save(failOnError: true)
		}
		//cria estados do Brasil
		if (!Estado.count) {
			def brasil = Pais.findByNome("Brasil")
			new Estado(abreviacao: "AC", nome: "Acre", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "AL", nome: "Alagoas", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "AM", nome: "Amazonas", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "AP", nome: "Amapá", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "BA", nome: "Bahia", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "CE", nome: "Ceará", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "DF", nome: "Distrito Federal", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "ES", nome: "Espírito Santo", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "GO", nome: "Goiás", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "MA", nome: "Maranhão", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "MG", nome: "Minas Gerais", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "MS", nome: "Mato Grosso do Sul", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "MT", nome: "Mato Grosso", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "PA", nome: "Pará", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "PB", nome: "Paraíba", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "PE", nome: "Pernambuco", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "PI", nome: "Piauí", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "PR", nome: "Paraná", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "RJ", nome: "Rio de Janeiro", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "RN", nome: "Rio Grande do Norte", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "RO", nome: "Rondônia", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "RR", nome: "Roraima", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "RS", nome: "Rio Grande do Sul", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "SC", nome: "Santa Catarina", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "SE", nome: "Sergipe", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "SP", nome: "São Paulo", pais: brasil).save(failOnError: true)
			new Estado(abreviacao: "TO", nome: "Tocantins", pais: brasil).save(failOnError: true)
		}
    }
	
    def destroy = {
    }
}
