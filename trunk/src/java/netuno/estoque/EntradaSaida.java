package netuno.estoque;

public enum EntradaSaida {

	ENTRADA("Entrada"),
	SAIDA("Saída");
	
	final String nome;
	
	EntradaSaida(String nome) {
		this.nome = nome;
	}
	
	public String toString() {
		return this.nome;
	}
	
}
