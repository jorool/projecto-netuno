package netuno.administracao

import netuno.administracao.TipoEndereco;

class Endereco {

	String endereco
	String bairro
	String numero
	String cep
	
	static belongsTo = [pessoa:Pessoa, cidade:Cidade, tipoEndereco:TipoEndereco]

	String toString() {
		this.endereco + ", " + bairro + " nº " + numero
	}
		
    static constraints = {
		endereco nullable:false, blank: false
		bairro nullable:false, blank: false
		pessoa nullable: false
		cidade nullable: false
    }
}
