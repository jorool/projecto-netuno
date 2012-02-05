package netuno.administracao

class Pais {

	String nome
	String codigoIBGE

	String toString() {
		this.nome
	}
		
    static constraints = {
		nome nullable: false, blank: false, unique: true
		codigoIBGE nullable: true
    }
}
