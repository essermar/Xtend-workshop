package _05_dispatch

import org.junit.Before
import org.junit.Test

import static org.junit.Assert.*

class XtendDispatcherTest {
	extension XtendDispatcher dispatcher

	@Before
	def void setUp() {
		dispatcher = new XtendDispatcher
	}

	
	/* Looks like in Java. But dispatching is based on argument's runtime type. */
	// TODO: Guess the last call's result
	@Test
	def void testXtendDispatchOneParameter() {
		assertEquals("o", dispatcher.doSomething("str"))
		assertEquals("n", dispatcher.doSomething(3))
		assertEquals("bi", dispatcher.doSomething(3bi))
		assertEquals("<result>", dispatcher.doSomething(3bi as Object))
	}

	@Test
	def void testDynamicDispatchInGeneratorWithXtend() {
		// Not possible in Java. Very useful in generator code!
		val Object i = 1
		assertEquals("This is an integer!", i.generate())
		assertEquals("null", null.generate())

		// Especially when iterating over a list
		val input = #[3, null, "Hello, World!"]	
		var output = ""
		for (o : input) {
			output += o.generate()
		}
		assertEquals("This is an integer!"+"null"+"This is a string!", output)
	}

	@Test
	def void testXtendDispatchTwoParameters() {
		assertEquals("a", doSomething("x", 3))
		assertEquals("a", "x".doSomething(3))

		assertEquals("b", doSomething(3bi, 3))
		assertEquals("c", doSomething(3, 3))
	}
}
