package projecto.netuno.administracao



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Pais)
class PaisTests {

	void testNewPais() {
		Pais pais = new Pais(nome: "pais teste", codigoIBGE: 0)
		assertTrue pais.validate()
	}
	
	void testGetPais() {
		Pais pais = new Pais(nome: "pais teste", codigoIBGE: 0)
		pais.save();
		
		assertNotNull(Pais.get(pais.id))
	}
	
}
