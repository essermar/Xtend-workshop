package _06_lambdas

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

/* Example for a pre-defined 'active annotation'.
 * This tells the Xtend compiler to add getters/setters 
 * to the generated Java class.
 * This class is used by the WithOperatorTest class.
 */ 

class Person {
	@Accessors
	String firstName
	@Accessors
	String lastName
	@Accessors
	Person spouse
	@Accessors
	List<Person> children
}
