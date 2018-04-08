package _02_classes

// import _01_helloworld.HelloWorld

// Imports work as they do in Java

/*  Multiple type definitions per file possible.
 *  Default access modifier for types and methods is 'public'.
 *  Default access modifier for fields is 'private' (later).
 */
interface Greeter {

	/* Default methods possible when transpiling to Java8.
	 * Will cause syntax error for versions < 1.8.
	 */
	def String sayHelloWorld() {
		println("Hello, world!");
	}

	def String sayHello() 
}

/* For type definitions, same rules apply as in Java.
 * Could also inherit from java class/ implement java interface; e.g: java.io.Serializable.
 */
class AdvancedHelloWorld /* extends HelloWorld */ implements Greeter {

	/* Private mutable field. Short form is: */
//	 private var String name; 
	/* Use 'val' to make it final:  */
//	 val String name
	String name

	/*  Public no-args constructor.
	 *  Java-like syntax would yield regular method: */
	// def AdvancedHelloWorld() { }
	new() {
		this.name = "nobody"
	}

	new(String name) {
		this.name = name
	}

	/* Inferred return type is String because println returns its argument.
	 * 'override' is mandatory. Unlike '@Override' annotation in Java.
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
	 * Here, the inferred return type would be String
	 * Method params are implicitly 'final'.
	 */
	def void setName(String newName) {
		this.name = newName
	}
}