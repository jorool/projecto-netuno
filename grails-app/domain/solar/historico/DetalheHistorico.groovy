package solar.historico

class DetalheHistorico {

    static constraints = {
    }
	
	String campo
	String valorAnterior
	String valorNovo
	
	static belongsTo = [historico:Historico]
	
}
