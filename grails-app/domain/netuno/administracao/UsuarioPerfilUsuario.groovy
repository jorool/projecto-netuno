package netuno.administracao

import org.apache.commons.lang.builder.HashCodeBuilder

class UsuarioPerfilUsuario implements Serializable {

	Usuario usuario
	PerfilUsuario perfilUsuario

	boolean equals(other) {
		if (!(other instanceof UsuarioPerfilUsuario)) {
			return false
		}

		other.usuario?.id == usuario?.id &&
			other.perfilUsuario?.id == perfilUsuario?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (usuario) builder.append(usuario.id)
		if (perfilUsuario) builder.append(perfilUsuario.id)
		builder.toHashCode()
	}

	static UsuarioPerfilUsuario get(long usuarioId, long perfilUsuarioId) {
		find 'from UsuarioPerfilUsuario where usuario.id=:usuarioId and perfilUsuario.id=:perfilUsuarioId',
			[usuarioId: usuarioId, perfilUsuarioId: perfilUsuarioId]
	}

	static UsuarioPerfilUsuario create(Usuario usuario, PerfilUsuario perfilUsuario, boolean flush = false) {
		new UsuarioPerfilUsuario(usuario: usuario, perfilUsuario: perfilUsuario).save(flush: flush, insert: true)
	}

	static boolean remove(Usuario usuario, PerfilUsuario perfilUsuario, boolean flush = false) {
		UsuarioPerfilUsuario instance = UsuarioPerfilUsuario.findByUsuarioAndPerfilUsuario(usuario, perfilUsuario)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(Usuario usuario) {
		executeUpdate 'DELETE FROM UsuarioPerfilUsuario WHERE usuario=:usuario', [usuario: usuario]
	}

	static void removeAll(PerfilUsuario perfilUsuario) {
		executeUpdate 'DELETE FROM UsuarioPerfilUsuario WHERE perfilUsuario=:perfilUsuario', [perfilUsuario: perfilUsuario]
	}

	static mapping = {
		id composite: ['perfilUsuario', 'usuario']
		version false
	}
}
