package netuno.administracao

import netuno.administracao.TipoPessoa;

class Pessoa {

	String nome
	String telefone
	String celular
	String fax
	
	static belongsTo = [tipoPessoa:TipoPessoa]
	
	static hasMany = [enderecos:Endereco]

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false
    }
}
