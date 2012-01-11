package projecto.netuno.estoque

class TipoProduto {

	String nome
	String descricao

	String toString() {
		this.nome
	}
	
    static constraints = {
		nome(unique:true, nullable:false, blank:false)
    }
	
}
