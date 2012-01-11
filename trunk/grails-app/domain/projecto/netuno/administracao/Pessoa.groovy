package projecto.netuno.administracao

class Pessoa {

	Integer codigo
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
		codigo nullable: false, unique:true
		nome nullable: false, blank: false
    }
}
