package _03_extensions

import java.math.BigDecimal

import org.junit.Test
import static org.junit.Assert.*
import static extension _03_extensions.AddsFour.*
import static extension _03_extensions.AddsFive.*

 // TODO: Will the test fail? What is the expected result? 
 /* TODO: Determine which extensions take precedence over which
  * by commenting and uncommenting the appropriate parts of the
  * source code.
  */
class ExtensionCollisionsTest {

	 extension AddsTwo = new AddsTwo
	 extension AddsThree = new AddsThree

	def private addSomething(BigDecimal bigD) {
		bigD + 1bd
	}

	@Test
	def void testAddSomethingExtensionMethodCall() {
		assertEquals(5bd, 0bd.addSomething())
	}
}
