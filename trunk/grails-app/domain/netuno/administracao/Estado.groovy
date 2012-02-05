package netuno.administracao

class Estado {

	String nome
	String sigla
	String codigoIBGE
 	
	static belongsTo = [pais:Pais]

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false, unique: true
		sigla nullable: false, blank: false, unique: true
		codigoIBGE nullable: true
		pais nullable: false
    }
}
