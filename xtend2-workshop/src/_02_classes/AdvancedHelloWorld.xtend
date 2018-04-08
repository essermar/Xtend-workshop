package _02_classes

interface Greeter {

	def String sayHelloWorld() {
		/* Default methods possible when transpiling to Java8.
	 	 * Will cause syntax error for versions < 1.8.
	 	 */
		println("Hello, world!");
	}
	def String sayHello() 
}

class AdvancedHelloWorld implements Greeter {

	/* Private mutable field. Short form for: */
//		 private var String name; 
	/* Use 'val' to make it final: */
//		 val String name
	String name

	/*  Public no-args constructor.
	 *  Java-like syntax would yield regular method: */
//	 def AdvancedHelloWorld() { }
	new() { }

	new(String name) {
		this.name = name
	}

	/* Keyword override is mandatory when implementing an interface method or
	 *  inheriting from a supertype. Fulfills the same purpose as '@Override' in Java. */
	/* Inferred return type is String because println() returns its argument.
	 */
	override sayHello() {
		println('Hello, ' + name + '!')
	}

	/* Inferred return type is String */
	def getName() {
		/* No return statement necessary. Everything is an expression ;-)
		 * Evaluation result of the method's last expression becomes return value.
		 * Return type is inferred from this value.
		 */
		this.name
	}

	/* Sometimes, it is necessary to specify an explicit return type.
	 * Here, the inferred return type would be String. If we want to make it 'void'
	 * instead, we have to say so explicitly.
	 * Method params are implicitly 'final'.
	 */
	def void setName(String newName) {
		this.name = newName
	}
}