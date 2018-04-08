package _02_classes

import org.junit.Test

import static org.junit.Assert.*

/** Demonstrates syntax for static access and access to nested classes in Xtend. */
class StaticAccessTest {

	@Test
	def void testAccessStaticConstant() {
		assertEquals("This is a constant.", ContainerWithStaticMembers.STRING_CONSTANT)
		assertEquals("This is a constant.", ContainerWithStaticMembers::STRING_CONSTANT)
	}	

	@Test
	def void testAccessInstanceMethod() {
		assertEquals("result", new ContainerWithStaticMembers().getResult())
	}

	@Test
	def void testAccessInstanceMethodThroughStaticField() {
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