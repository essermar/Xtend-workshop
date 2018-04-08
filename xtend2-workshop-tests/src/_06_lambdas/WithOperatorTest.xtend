package _06_lambdas

import org.junit.Test
import static org.junit.Assert.*

/* 
 * With operator offers a convenient way to create object trees.
 * Often used in M2M transformations.
 */
class WithOperatorTest {
	@Test
	def void withExample() {
		val Person person = new Person => [
			val me = it
			lastName = "Smith"
			firstName = "Peter"
			spouse = new Person => [
				lastName = "Brown"
				firstName = "Mary"
				spouse = me
			]
			children = newArrayList(
				new Person => [
					lastName = "Smith"
					firstName = "John"
				],
				new Person => [
					lastName = "Smith"
					firstName = "Clair"
				]
			)
			spouse.children = children
		]

		assertEquals("Smith", person.lastName)
		assertEquals("Peter", person.firstName)
		assertEquals("Mary", person.spouse.firstName)
		assertSame(person, person.spouse.spouse)
		assertEquals(2, person.spouse.children.size)
		assertEquals("Clair", person.children.filter[firstName.contains("a")].head.firstName)
	}
}