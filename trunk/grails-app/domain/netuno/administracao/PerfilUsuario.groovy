package netuno.administracao

class PerfilUsuario {

	String authority
	String descricao

	String toString() {
		this.descricao
	}
	
	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
