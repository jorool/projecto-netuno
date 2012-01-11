package projecto.netuno.estoque

import projecto.netuno.administracao.Pessoa;

class Movimento {
	
	Integer codigo
	Date data
	String usuario
	BigDecimal valorTotal
	BigDecimal valorDesconto
	
	static belongsTo = [tipoMovimento:TipoMovimento, clienteFornecedor:Pessoa]

	static hasMany = [itens:ItemMovimento]
	
    static constraints = {
		codigo nullable: false, unique: true, blank: false
		data nullable: false, blank: false
    }
}
