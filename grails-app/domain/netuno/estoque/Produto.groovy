package netuno.estoque


class Produto {

	Integer codigo
	String nome
	String descricao
	BigDecimal saldoEstoqueFisico
	BigDecimal valorUnitario
	
	static belongsTo = [tipoProduto:TipoProduto]
	
	static Produto novoProdutoComCodigo() { 
		Integer maiorCodigo = Produto.executeQuery("select max(coalesce(p.codigo,0)) + 1 from Produto p")[0]
		new Produto(codigo: maiorCodigo)
	}

    static constaints = {
		codigo nullable: false, black: false, unique: true 
		nome nullable: false, black: false, unique: true
		tipoProduto nullable: false
		saldoEstoqueFisico nullable: false
		valorUnitario nullable: false
    }
}