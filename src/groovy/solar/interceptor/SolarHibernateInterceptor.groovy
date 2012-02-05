package solar.interceptor

import org.hibernate.EmptyInterceptor


/**
 * 
 * @author Carlos Henrique
 *
 *Interceptor do hibernate utilizado em conjunto (coloque o nome da transformacao ast aqui) para interceptar sql geradas pelo hibernate
 *e utilizar a propriedade deleted para não pegar registros que foram tidos como excluidos do banco.
 *
 *Também intercepta deletes para transforarem em updates onde apenas altera a propriedade deleted para false
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
		
		println "sql do interceptor: ${sql}"
		
		return sql;
	}
     
}
