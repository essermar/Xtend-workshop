package _02_classes

interface Greeter {

	def String sayHelloWorld() {
		/* Default methods are possible when transpiling to Java8.
		 * See Xtend compiler preferences
		 */
	}
	def String sayHello() 
}

class AdvancedHelloWorld implements Greeter {

	// Public no-args constructor.
	new () { }

	new(String name) { }

	/* Keyword override is mandatory when implementing an interface method or
	*  inheriting from a supertype. Fulfills the same purpose as '@Override' in Java. */
	override sayHello() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}

	def getName() { }
	def setName(String name) { }

}