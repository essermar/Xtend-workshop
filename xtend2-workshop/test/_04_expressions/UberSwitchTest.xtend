package _04_expressions

import org.junit.Before
import org.junit.Test

import static org.junit.Assert.*

/* TODO: Take a look at the UberSwitch class and try to predict the method's return
 * value. Replace the "<result>" strings with your predictions.
 * Then run the tests to see if you were right or not. */
class UberSwitchTest {
	var UberSwitch uberSwitch

	@Before
	def void setUp() {
		uberSwitch = new UberSwitch
	}

	@Test
	def void testDoSwitchBigInt101() {
		assertEquals("<result>", uberSwitch.doSwitch(101bi))
	}

	@Test
	def void testDoSwitchBigInt57() {
		assertEquals("<result>", uberSwitch.doSwitch(57bi))
	}

	@Test
	def void testDoSwitchNumber1_32() {
		assertEquals("<result>", uberSwitch.doSwitch(1.32))
	}

	@Test
	def void testDoSwitchNumber57() {
		assertEquals("<result>", uberSwitch.doSwitch(57))
	}

	@Test
	def void testDoSwitchBigInt40() {
		assertEquals("<result>", uberSwitch.doSwitch(40bi))
	}

	@Test
	def void testDoSwitchNull() {
		assertEquals("<result>", uberSwitch.doSwitch(null))
	}

	@Test
	def void testDoSwitchShortObject() {
		assertEquals("<result>", uberSwitch.doSwitch("x"))
	}

	@Test
	def void testDoSwitchStringvV() {
		assertEquals("<result>", uberSwitch.doSwitch("foo v"))
	}

	@Test
	def void testDoSwitchStringFoo() {
		assertEquals("<result>", uberSwitch.doSwitch("foo"))
	}
}
