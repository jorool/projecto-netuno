package netuno.administracao

import org.apache.tools.ant.types.Assertions.EnabledAssertion;
import org.springframework.security.access.annotation.Secured;

import solar.SolarBaseController;

class UsuarioController extends SolarBaseController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def novaInstancia(atributos){
		new Usuario(atributos)
	}

	def obterInstancia(id){
		Usuario.get(id)
	}
	
	def save() {
		def perfilUsuario = PerfilUsuario.findByAuthority(params.perfilUsuario);
		def usuario = new Usuario(
			username: params.username,
			password: params.password,
			enabled: params.enabled ?: false
			)
		
		if (!usuario.save(flush: true)) {
			render(template: "form", model: [instance: usuario])
			return
		}
		UsuarioPerfilUsuario.create usuario, perfilUsuario

		flash.mensagemInfo = message(code: 'default.created.message', args:[message(code: "${this.entityName}.label", default: 'Registro'), usuario.id])
		redirect(action: "list")
	}
	
	def delete() {
		def retorno = [success:true, msg:''];
		def usuario = Usuario.findById(params.id)
		UsuarioPerfilUsuario.removeAll(usuario)
		usuario.delete(flush: true)
		retorno.msg = message(code: 'default.deleted.message', args: [message(code: "${this.entityName}.label", default: 'Registro'), params.id])
		render retorno.encodeAsJSON();
	}
	
}
