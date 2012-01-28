package netuno.estoque

import netuno.estoque.EntradaSaida;

class TipoMovimento {

	String nome
	String descricao
	
	static belongsTo = [tipo:EntradaSaida]
	
    static constraints = {
		nome nullable: false, blank: false, unique: true
		tipo nullable: false
    }
}
