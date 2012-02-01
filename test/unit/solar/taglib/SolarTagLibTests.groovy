package solar.taglib



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.web.GroovyPageUnitTestMixin} for usage instructions
 */
@TestFor(SolarTagLib)
class SolarTagLibTests {
	

	void testjgridSemIdDeveDarErro(){
		def tag = "<sol:jgrid modelo='teste' />"
		tagIsValid(tag)
	}
	
	
	void testjgridSemModeloDeveDarErro(){
		def tag = "<sol:jgrid id='grid' />"
		tagIsValid(tag)
		
	}
	
	
	
	void testAAA(){
		def test = "[a:23, b:45];[a:25, b:32];";
		def valores = test.split(";")
		def map = Eval.me(valores[0])
			
		assert map.a == 23
	}
	
//	void testeBBB(){
//		def test = """
//<sol:jgrid id='grid' modelo='teste'>
//<sol:column name='cod' label='teste' width='5' />
//			<sol:column name='cod2' label='teste2' width='52' />
//
//   <sol:column name='cod3' label='teste3' width='53' />
//</sol:jgrid>
//"""
//		
//assert applyTemplate(test) == ""
//	}
	
	void testColumnDeveTerName(){
		def tag = "<sol:column />"
		
	tagIsValid(tag)
		
	}
	
	void testcolumnDeveTerLabel(){
		def tag = "<sol:column name='codigo' />"
		
		tagIsValid(tag)
	}
	
	void testColumnDeveTerWidth(){
		def tag = "<sol:column name='codigo' label='Código' />"
		tagIsValid(tag)
		
	}
	
	void tagIsValid(tag){
		try{
			applyTemplate(tag)
			assert false
		}catch(org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException e){
			//sucesso
		}
	}
	
	void testColumnBasicaDeveRetornarMapString(){
		def tag = "<sol:column name='cod' label='codigo' width='50' />"
		
		assert applyTemplate(tag) == "[name:'cod', label:'codigo', width:'50'];"
	}
	
	void testColumnComAlign(){
		def tag = "<sol:column name='cod' label='codigo' width='50' align='right' />" 
		
		assert applyTemplate(tag) == "[name:'cod', label:'codigo', width:'50', align:'right'];"
	}
	
	void testColumnComSortable(){
		def tag = "<sol:column name='cod' label='codigo' width='50' sortable='false' />"
		
		assert applyTemplate(tag) == "[name:'cod', label:'codigo', width:'50', sortable:'false'];"
	}
	
	void testColumnComAlignSortable(){
		def tag = "<sol:column name='cod' label='codigo' width='50' sortable='false' align='right' />"
		
		assert applyTemplate(tag) == "[name:'cod', label:'codigo', width:'50', align:'right', sortable:'false'];"
	}
	
	
	void testJgridComColunasDeveTerColNames(){
		def tag = """<sol:jgrid id='grid' modelo='teste'>
						<sol:column name='cod' label='codigo' width='50' />
						<sol:column name='cod2' label='codigo2' width='50' align='right' />
						<sol:column name='cod3' label='codigo3' width='50' sortable='false' />
					</sol:jgrid>"""
		
		def result = applyTemplate(tag)
		
		assert result.contains("colModel:[");
		assert result.contains("{name:'cod',index:'cod',width:50}")
		assert result.contains("{name:'cod2',index:'cod2',width:50,align:'right'}")
		assert result.contains("{name:'cod3',index:'cod3',width:50,sortable:'false'}")
	}
	
	
	
	
}
