package solar.interceptor

import netuno.administracao.Usuario
import netuno.administracao.UsuarioPerfilUsuario;

import org.codehaus.groovy.grails.orm.hibernate.support.ClosureEventTriggeringInterceptor;
import org.hibernate.event.PostInsertEvent
import org.springframework.security.core.context.SecurityContextHolder

import solar.historico.DetalheHistorico
import solar.historico.Historico
import solar.historico.TipoOperacao


/**
*
* @author Carlos Henrique
*
*Interceptor do hibernate utilizado em conjunto com class SolarHibernateInterceptor para interceptar saves
*e inserir no historico
*
*Para utilizado altere a configuração do resources.groovy colocando:
*<code>
*eventTriggeringInterceptor(solar.interceptor.SolarGlobalEventTriggering)
*</code>
*dentro das definições dos beans
*
*/
class SolarGlobalEventTriggering extends ClosureEventTriggeringInterceptor{
	
	@Override
	void onPostInsert(PostInsertEvent event) {
		
		def entity = event.entity
		
		if((entity instanceof Historico) || (entity instanceof DetalheHistorico) || (entity instanceof UsuarioPerfilUsuario)){
			return;
		}
		
		def auth = SecurityContextHolder.context.authentication;
		
		if(auth != null){
			Usuario user = Usuario.findByUsername(auth.name)
			
			Historico historico = new Historico(entidade:entity.class.simpleName, dataOperacao:new Date(), 
												tipoOperacao: TipoOperacao.SALVO, idEntidade:(Long)event.id, usuario:user)
			historico.save()
		}
		
		super.onPostInsert(event);
		
	}	
	
}
