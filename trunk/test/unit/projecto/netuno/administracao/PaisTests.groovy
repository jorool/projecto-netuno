package projecto.netuno.administracao



import javax.validation.constraints.AssertFalse;

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
	
	void testNomeUnicoValidator() {
		Pais pais1 = new Pais(nome: "pais teste", codigoIBGE: 0)
		pais1.save()
		Pais pais2 = new Pais(nome: "pais teste", codigoIBGE: 0)
		pais2.save()
		assertFalse(pais2.validate())
	}
	
	void testNomeNullValidator() {
		Pais pais = new Pais()
		pais.save()
		assertFalse pais.validate()
	}
	
	void testNomeBrancoValidator() {
		Pais pais = new Pais(nome: "")
		assertFalse pais.validate()
	}
	
	void testGetPais() {
		Pais pais = new Pais(nome: "pais teste", codigoIBGE: 0)
		pais.save();
		assertNotNull(Pais.get(pais.id))
	}
	
}
