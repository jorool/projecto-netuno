package projecto.netuno.estoque


class Produto {

	String codigo
	String nome
	String descricao
	BigDecimal saldoEstoqueFisico
	BigDecimal valorUnitario
	
	static belongsTo = [tipoProduto:TipoProduto]

    static constaints = {
		codigo(nullable:false, black:false, unique:true)
		nome(nullable:false, black:false, unique:true)
		tipoProduto(nullable:false)
		saldoEstoqueFisico(nullable:false)
		valorUnitario(nullable:false)
    }
}
