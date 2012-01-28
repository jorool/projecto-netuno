package netuno.estoque

class ItemMovimento {

	BigDecimal quantidade
	BigDecimal valorUnitario
	BigDecimal valorDesconto
	
	static belongsTo = [produto:Produto]
	
    static constraints = {
    }
}
