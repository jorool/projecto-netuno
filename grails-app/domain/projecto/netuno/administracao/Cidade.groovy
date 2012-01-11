package projecto.netuno.administracao

class Cidade {

	String nome
	String codigoIBGE
	
	static belongsTo = [estado:Estado]

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false, unique: true
		codigoIBGE nullable: false, blank: false, unique: true
		estado nullable: false
    }
}
