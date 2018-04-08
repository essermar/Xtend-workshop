package _02_classes

import org.junit.Test

import static org.junit.Assert.*

// Class with various static members is given
// Tests are blank with comments concerning what is to be tested (more difficult)
// Need to think about this in detail.
class StaticAccessTest {

	@Test
	def void testAccessStaticConstant() {
		assertEquals("This is a constant.", ContainerWithStaticMembers.STRING_CONSTANT)
		assertEquals("This is a constant.", ContainerWithStaticMembers::STRING_CONSTANT)
	}	

	@Test
	def void testAccessInstanceProperty() {
		assertEquals("result", new ContainerWithStaticMembers().getResult())
	}

	@Test
	def void testAccessInstancePropertyThroughStaticField() {
		assertEquals("result", ContainerWithStaticMembers.INSTANCE.result)
		assertEquals("result", ContainerWithStaticMembers::INSTANCE.result)
	}

	@Test
	def void testAccessStaticMethod() {
		assertTrue(ContainerWithStaticMembers.isStaticMethod())
		assertTrue(ContainerWithStaticMembers::isStaticMethod)
	}
	
	@Test
	def void testAccessInstanceOfNestedStaticClass() {
		assertEquals("innerResult", new ContainerWithStaticMembers.TheInnerClass().result)
		assertEquals("innerResult", new ContainerWithStaticMembers$TheInnerClass().result)
	}	
}