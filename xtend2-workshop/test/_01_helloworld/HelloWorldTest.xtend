package _01_helloworld

import java.io.ByteArrayOutputStream
import java.io.PrintStream
import org.junit.After
import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*

/* TODO: Print "Hello, world!" to the console so that the test passes.
 * Hint: Use function:  org.eclipse.xtext.xbase.lib.InputOutput#print()
 */
class HelloWorldTest {

	PrintStream printStream
	ByteArrayOutputStream outStream

	@Before
	def void setUp() {
		outStream = new ByteArrayOutputStream
		printStream = new PrintStream(outStream, true)
		System.setOut(printStream)
	}

	@Test
	def void testPrintln() {
		HelloWorld.main(#[])
		assertEquals("Hello, world!\n", outStream.toString())
	}

	@After
	def void tearDown() {
		printStream.close()
		System.setOut(System.out)
	}

}