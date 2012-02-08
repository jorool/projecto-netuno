package solar.interceptor

import org.hibernate.EmptyInterceptor
import org.hibernate.type.Type

import solar.historico.DetalheHistorico;
import solar.historico.Historico;
import solar.historico.TipoOperacao;


/**
 * 
 * @author Carlos Henrique
 *
 *Interceptor do hibernate utilizado em conjunto com SolarGlobalEventTriggering para interceptar updates e deletes
 *e inserir no historico
 *
 *Para utilizado altere a configuração do resources.groovy colocando: 
 *<code>
 *entityInterceptor(solar.interceptor.SolarHibernateInterceptor)
 *</code>
 *dentro das definições dos beans
 *
 */
class SolarHibernateInterceptor extends EmptyInterceptor{

	@Override
	public String onPrepareStatement(String sql) {

		//println "sql do interceptor: ${sql}"

		return sql;
	}


	boolean onFlushDirty(Object entity, Serializable id, Object[] currentState, Object[] previousState, String[] propertyNames, Type[] types) {



		Historico historico = new Historico(entidade:entity.class.simpleName, dataOperacao:new Date(),
				tipoOperacao:TipoOperacao.ALTERADO, idEntidade:(Long)id)
		historico.save()

		propertyNames.eachWithIndex {name, index ->
			def ant = previousState[index] ?: ""
			def atual = currentState[index] ?: ""
			
			if(ant.hasProperty("id")){
				ant = ant.id.toString()
			}
			
			if(atual.hasProperty("id")){
				atual = atual.id.toString()
			}
			
			if(ant.class.isEnum()){
				ant = ant.name()
			}
			
			if(atual.class.isEnum()){
				atual = atual.name()
			}
			

			if(!ant.equals(atual)){
				DetalheHistorico detalhe = new DetalheHistorico(campo:name, valorAnterior:ant.toString(),
						valorNovo:atual.toString(), historico:historico)
				detalhe.save()
			}
		}


		return false;
	}

	void onDelete( Object entity, Serializable id, Object[] state, String[] propertyNames, Type[] types) {

		Historico historico = new Historico(entidade:entity.class.simpleName, dataOperacao:new Date(),
				tipoOperacao:TipoOperacao.EXCLUIDO, idEntidade:(Long)id)
		historico.save()

		propertyNames.eachWithIndex {name, index ->
			
			def valor = state[index] ?: ""
			
			if(valor.hasProperty("id")){
				valor = valor.id.toString()
			}
			
			if(valor.class.isEnum()){
				valor = valor.name();
			}
			
			DetalheHistorico detalhe = new DetalheHistorico(campo:name, valorAnterior:valor, 
					valorNovo:"", historico:historico)
			detalhe.save()
		}
	}
}
