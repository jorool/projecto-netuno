package projecto.netuno.administracao

class Usuario {

	String nome
	String email
	String login
	String senha
	
	String toStrin() {
		this.nome
	}
	
    static constraints = {
		nome nullable:false, blank:false
		login nullable:false, blank:false, unique:true
		email email:true, unique:true
		senha nullable:false, blank:false
    }
}
