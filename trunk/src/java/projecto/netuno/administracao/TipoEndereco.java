package projecto.netuno.administracao;

public enum TipoEndereco {

	RESIDENCIAL("Residencial"),
	COMERCIAL("Comercial");
	
	final String nome;
	
	TipoEndereco(String nome) {
		this.nome = nome;
	}
}
