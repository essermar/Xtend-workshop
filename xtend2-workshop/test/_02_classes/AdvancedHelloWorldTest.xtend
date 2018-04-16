package _02_classes

import org.junit.Test

import static org.junit.Assert.*
/* This example showcases type definitions, member variables and (accessor) methods in Xtend.
 * Xtend knows the same type definitions as Java;e.g.: class, interface, enum
 * and uses the same keywords.
 * Xtend uses single inheritance. Types from Java can be used seamlessly.
 * Packages and imports work as they do in Java.
 * Xtend allows multiple top-level type definitions per file!
 * Xtend types may have methods (default: public) and fields (default: private)
 */
/* TODO: Make the necessary modifications in file AdvancedHelloWorld to
 * make the tests pass.
 * */
class AdvancedHelloWorldTest {

	@Test
	def void testGreetTheWorld() {
		val Greeter greeter = new AdvancedHelloWorld()
		assertEquals("Hello, world!", greeter.sayHelloWorld())
	}

	@Test
	def void testGreetXtend() {
		/*  Immutable, use var for mutable version. */
		val Greeter greeter = new AdvancedHelloWorld("Xtend")
		assertEquals("Hello, Xtend!", greeter.sayHello())
	}

	@Test
	def void testGreetMrX() {
		/* Variable type can be inferred. What is the type here? */
		val greeter = new AdvancedHelloWorld

		// Property-like use of setter (assignment instead of setter call)
		greeter.name = 'Mr. X'
		// Property-like use of getter (method-call without prefix 'get') 
		assertEquals("Mr. X", greeter.name)
		// Empty parentheses are optional!
		assertEquals("Hello, Mr. X!", greeter.sayHello)
	}

}
