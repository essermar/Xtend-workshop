package _03_extensions

import java.math.BigDecimal

import org.junit.Test
import static org.junit.Assert.*
import static extension _03_extensions.AddsFour.*
import static extension _03_extensions.AddsFive.*


/** Extension Functions are cool -- but also very dangerous.
 *  Especially if you lose track of from where they come.
 *  And the compiler warnings are not shown.
 *  Order of precedence is local < provider < static.
 *  Extensions that collide and come from the same category cause
 *  are treated as ambiguous and cause a compile error.
 */
 // TODO: Will the test fail? What is the expected result? 
 /* TODO: Determine which extensions take precedence over which
  * by commenting and uncommenting the appropriate parts of the
  * source code.
  */
class ExtensionCollisionsTest {

	 extension AddsTwo = new AddsTwo
	 extension AddsThree = new AddsThree

	// class internal "extension" methods have highest priority
	def private addSomething(BigDecimal bigD) {
		bigD + 1bd
	}

	@Test
	def void testAddSomethingExtensionMethodCall() {
		assertEquals(1bd, 0bd.addSomething())
	}
}
