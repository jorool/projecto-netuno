package solar.historico;

public enum TipoOperacao {
	
	SALVO("Salvo"), ALTERADO("Alterado"), EXCLUIDO("Excluido");
	
	private String nome;
	
	TipoOperacao(String nome){
		this.nome = nome;
	}
	
	@Override
	public String toString() {
		return nome;
	}
	
}
