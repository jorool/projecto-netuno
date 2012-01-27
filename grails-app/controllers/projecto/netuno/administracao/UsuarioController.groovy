package projecto.netuno.administracao

class UsuarioController {

    def index() { }
	
	def logar = {
		def usuario = Usuario.findWhere(login:params['login'], password:params['password'])
		session.user = usuario
		//if (usuario)
	}
}
