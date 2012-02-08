package solar.historico

import netuno.administracao.Usuario;

class Historico {

    static constraints = {
		usuario nullable:true
    }
	
	String entidade;
	Date dataOperacao;
	TipoOperacao tipoOperacao;
	Usuario usuario;
	Long idEntidade;
	
	static hasMany = [detalhes:DetalheHistorico]
	
}
