package _02_classes

import org.junit.Test

import static org.junit.Assert.*

/* TODO: Implement the required classes! Use inheritance or an interface. 
 * Hint: Xtend allows defining multiple types per file.
 * */
class AdvancedHelloWorldTest {
	
	@Test
	def void testGreetTheWorld() {
		val Greeter greeter = new AdvancedHelloWorld()
		assertEquals("Hello, world!", greeter.sayHelloWorld())
	}

	@Test
	def testGreetXtend() {
		/*  Immutable, use var for mutable version */
		val Greeter greeter = new AdvancedHelloWorld("Xtend")
		assertEquals("Hello, Xtend!", greeter.sayHello())
	}
	
	@Test
	def testGreetMrX() {
		/* What is the inferred type here? */
		val greeter = new AdvancedHelloWorld
		
		// Property-like use of setter (assignment instead of setter call)
		greeter.name = 'Mr. X'
		// Property-like use of getter (method-call without prefix 'get') 
		assertEquals("Mr. X", greeter.name)
		// Empty parentheses are optional!
		assertEquals("Hello, Mr. X!", greeter.sayHello)
	}
	
}
