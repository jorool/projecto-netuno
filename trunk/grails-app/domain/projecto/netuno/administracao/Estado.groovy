package projecto.netuno.administracao

class Estado {

	String nome
	String codigoIBGE
	
	static belongsTo = [pais:Pais]

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false, unique: true
		codigoIBGE nullable: false, blank: false, unique: true
		pais nullable: false
    }
}
