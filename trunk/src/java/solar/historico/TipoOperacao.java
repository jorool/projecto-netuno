package solar.historico;

public enum TipoOperacao {
	
	SALVO("Criado"), ALTERADO("Alterado"), EXCLUIDO("Excluído");
	
	private String nome;
	
	TipoOperacao(String nome){
		this.nome = nome;
	}
	
	@Override
	public String toString() {
		return nome;
	}
	
}
