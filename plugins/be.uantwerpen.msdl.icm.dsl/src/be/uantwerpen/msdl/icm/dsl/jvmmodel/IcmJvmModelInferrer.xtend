/*
 * generated by Xtext 2.9.1
 */
package be.uantwerpen.msdl.icm.dsl.jvmmodel

import be.uantwerpen.msdl.icm.dsl.icm.Model
import be.uantwerpen.msdl.icm.dsl.icm.ModelElement
import be.uantwerpen.msdl.icm.dsl.icm.Property
import be.uantwerpen.msdl.metamodels.process.impl.PropertyImpl
import com.google.inject.Inject
import org.eclipse.xtext.common.types.JvmDeclaredType
import org.eclipse.xtext.naming.IQualifiedNameProvider
import org.eclipse.xtext.xbase.jvmmodel.AbstractModelInferrer
import org.eclipse.xtext.xbase.jvmmodel.IJvmDeclaredTypeAcceptor
import org.eclipse.xtext.xbase.jvmmodel.IJvmDeclaredTypeAcceptor.IPostIndexingInitializing
import org.eclipse.xtext.xbase.jvmmodel.JvmTypesBuilder

/**
 * <p>Infers a JVM model from the source model.</p> 
 * 
 * <p>The JVM model should contain all elements that would appear in the Java code 
 * which is generated from the source model. Other models link against the JVM model rather than the source model.</p>     
 */
class IcmJvmModelInferrer extends AbstractModelInferrer {

	/**
	 * convenience API to build and initialize JVM types and their members.
	 */
	@Inject extension JvmTypesBuilder jvmTypesBuilder
	@Inject extension IQualifiedNameProvider

	/**
	 * The dispatch method {@code infer} is called for each instance of the
	 * given element's type that is contained in a resource.
	 * 
	 * @param element
	 *            the model to create one or more
	 *            {@link JvmDeclaredType declared
	 *            types} from.
	 * @param acceptor
	 *            each created
	 *            {@link JvmDeclaredType type}
	 *            without a container should be passed to the acceptor in order
	 *            get attached to the current resource. The acceptor's
	 *            {@link IJvmDeclaredTypeAcceptor#accept(org.eclipse.xtext.common.types.JvmDeclaredType)
	 *            accept(..)} method takes the constructed empty type for the
	 *            pre-indexing phase. This one is further initialized in the
	 *            indexing phase using the closure you pass to the returned
	 *            {@link IPostIndexingInitializing#initializeLater(org.eclipse.xtext.xbase.lib.Procedures.Procedure1)
	 *            initializeLater(..)}.
	 * @param isPreIndexingPhase
	 *            whether the method is called in a pre-indexing phase, i.e.
	 *            when the global index is not yet fully updated. You must not
	 *            rely on linking using the index if isPreIndexingPhase is
	 *            <code>true</code>.
	 */
	def dispatch void infer(Model element, IJvmDeclaredTypeAcceptor acceptor, boolean isPreIndexingPhase) {
//		
//		if (element == null || element.modelElements.empty) {
//			return
//		}
//
////		val semanticProperties = element.modelElements.filter[e|(e instanceof SemanticProperty)]
////		val syntacticProperties = element.modelElements.filter[e|(e instanceof SyntacticProperty)]
//		val properties = element.modelElements.filter[e|(e instanceof Property)]
//
//		for (property : properties) {
//			acceptor.accept(property.toClass(property.validJavaFqn)) [
//				superTypes += _typeReferenceBuilder.typeRef(PropertyImpl)
//				
//				//Semantic properties
//				properties.filter[p|(p as Property).activityReference!=null].forEach [ p |
//					members += property.toField("reference", _typeReferenceBuilder.typeRef("String")) [
//						initializer = [append('''"«(p as Property).activityReference»"''')]
//						final = true
//					]
//				]
//				
//				//Syntactic properties
//				properties.filter[p|(p as Property).queryReference!=null].forEach [ p |
//					members += property.toField("query", _typeReferenceBuilder.typeRef("String")) [
//						initializer = [append('''"«(p as Property).activityReference»"''')]
//						final = true
//					]
//				]
////				members += property.toMethod("evaluateCheckExpression", _typeReferenceBuilder.typeRef("boolean")) [
////					if ((property as SemanticProperty).checkExpression == null) {
////						body = [
////							append('''return true;''')
////						]
////					} else {
////						body = pattern.checkExpression
////					}
////				]
//			]
//		}
	}

	def getValidJavaFqn(ModelElement modelElement) {
		val packageName = modelElement.fullyQualifiedName.skipLast(1)
		val className = modelElement.fullyQualifiedName.lastSegment.toFirstUpper
		packageName.append(className)
	}
}
