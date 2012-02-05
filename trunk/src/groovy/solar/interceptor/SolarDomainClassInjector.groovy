package solar.interceptor

import java.net.URL;

import org.codehaus.groovy.ast.ClassHelper;
import org.codehaus.groovy.ast.ClassNode;
import org.codehaus.groovy.classgen.GeneratorContext;
import org.codehaus.groovy.control.SourceUnit;
import org.codehaus.groovy.grails.compiler.injection.GrailsDomainClassInjector;

class SolarDomainClassInjector implements GrailsDomainClassInjector{

	public void performInjectionOnAnnotatedEntity(ClassNode classNode) {
			println "babababab"
			classNode.addProperty("deleted", ClassNode.ACC_PUBLIC, ClassHelper.boolean_TYPE, null, null, null);
		
	}

	@Override
	public void performInjection(SourceUnit arg0, ClassNode classNode) {
		println "babababab"
		classNode.addProperty("deleted", ClassNode.ACC_PUBLIC, ClassHelper.boolean_TYPE, null, null, null);
		
	}

	@Override
	public void performInjection(SourceUnit arg0, GeneratorContext arg1,
			ClassNode classNode) {
			println "babababab"
			classNode.addProperty("deleted", ClassNode.ACC_PUBLIC, ClassHelper.boolean_TYPE, null, null, null);
		
	}

	@Override
	public boolean shouldInject(URL arg0) {
		println "bababababttttt"
		return true
	}

}
