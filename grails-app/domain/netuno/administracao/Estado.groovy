package netuno.administracao

class Estado {

	String nome
	String abreviacao
	String codigoIBGE
	
	static belongsTo = [pais:Pais]

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false, unique: true
		abreviacao nullable: false, blank: false, unique: true
		codigoIBGE nullable: true, blank: false, unique: true
		pais nullable: false
    }
}
