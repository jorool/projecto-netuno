package netuno.administracao;

public enum TipoPessoa {

	CLIENTE("Cliente"),
	FORNECEDOR("Fornecedor"),
	AMBOS("Ambos");
	
	final String nome;
	
	TipoPessoa(String nome) {
		this.nome = nome;
	}
	
	public String toString() {
		return this.nome;
	}
	
}
