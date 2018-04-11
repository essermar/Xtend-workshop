package _06_lambdas

import java.util.function.BiFunction
import org.junit.Test
import static org.junit.Assert.*
import static extension java.lang.Integer.*

/* Lambda: "anonymous" method.
 * Technically: instance of an anonymous type implementing a known interface with one abstract method 
 * (Function/Procedure) or extending an existing abstract class that has one abstract method.
 * 
 * Closure: "lambda that closes over its environment"; i.e.: needs values from its environment.
 * Very useful when working with iterables :-) 
 * 
 * Compiled to Java8 lambdas or anonymous classes depending on transpiler settings.
 * Xtend is fully compatible with Java8's streams API. */
class LambdaTest {

	@Test
	def void testFunWithLambdaLiterals() {
		// lambda implementing xbase library interface
		val Functions.Function2<String, String, String> stringLambda = [String str, String str2|str + str2]

		// alternative shorthand syntax for left-hand side (works with function interfaces from xbase lib)
		val (String, String)=>String stringLambdaWithShorthandSyntax = stringLambda

		// silly closure with type inference
		val i = 99
		val stringClosure = [String str, String str2|str + str2 + i]

		assertEquals("Hello, world!", stringLambda.apply("Hello, ", "world!"))
		assertEquals("Hello, world!", stringLambdaWithShorthandSyntax.apply("Hello, ", "world!"))
		assertEquals("Hello, world!99", stringClosure.apply("Hello, ", "world!"))
		assertEquals("Hello, world!", [String str, String str2|str + str2].apply("Hello, ", "world!"))

		// TODO: Fix the failing assertion by implementing the appropriate lambda. 
		//	var BiFunction<String, String, String> stringLambdaJdk8 = null
		val BiFunction<String, String, String> stringLambdaJdk8 = [String str, String str2|(str + str2).toUpperCase()]
		assertEquals("HELLO, WORLD!", stringLambdaJdk8.apply("Hello, ", "world!"))
	}


	def private void doSomething(Object obj) { print(obj + " ") }

	/* Typically, lambdas are used to process collections. This test demonstrates the various notations for lambdas available
	 * in Xtend when working with collections. It uses IterableExtensions#forEach(...) as an example.*/
	// TODO: Run the tests and check the console output. All variations should produce exactly the same output.
	@Test
	def void testEquivalentLambdaNotations() {

		val exampleObjects = newArrayList("4", 3, true, "9")

		println("Simple java-like for-each-loop. Dirt simple, but very unflexible:")
		for (Object obj : exampleObjects) {
			doSomething(obj)
		}
		println()

		println(
			"Use one-method-interface to separate iteration logic from item processing strategy. Flexible but verbose:")
		IterableExtensions::forEach(exampleObjects, new Procedures.Procedure1<Object>() {

			override apply(Object obj) {
				doSomething(obj)
			}

		})
		println()

		println("Shortened version using a lambda expression:")
		IterableExtensions::forEach(exampleObjects, [Object obj|doSomething(obj)])
		println()

		println("Using 'forEach' with extension method syntax:")
		exampleObjects.forEach([Object obj|doSomething(obj)])
		println()

		println("Pulling out the last lambda expression:")
		exampleObjects.forEach()[Object obj|doSomething(obj)]
		println()

		println("Omitting empty parentheses:")
		exampleObjects.forEach[Object obj|obj.doSomething]
		println()

		println("Using predefined lambda parameter 'it':")
		exampleObjects.forEach[Object it|it.doSomething]
		println()

		println("Omitting 'it':")
		exampleObjects.forEach[Object it|doSomething]
		println()

		println("Omitting parameter declaration (it can be inferred):")
		exampleObjects.forEach[doSomething]
		println()

	}


	/* Not every possible "simplification" improves readability.
	 * Besides: Expressive function names are always welcome ;-)
	 */
	// TODO: Guess what is going on here. Then run the test to find out.
	@Test
	def void testDemoLambdaShorthandNotationWithNoReadabilityAtAll() {
		// assertEquals("result?", "x".doSpecialApply("y")[a, b|a + b + a + b])
		assertEquals("xyxy", "x".doSpecialApply("y")[a, b|a + b + a + b])
	}

	/* 
	 * A custom method that expects an interface instance
	 * with one method that accepts two Strings and returns one String.
	 * Last parameter is a shorthand for 'Function2' interface.
	 */
	def doSpecialApply(String s1, String s2, (String, String)=>String function1) {
		function1.apply(s1, s2)
	}


	// Procedure used as a lambda may be quite complex  ...
	// TODO: Guess the outcome :-) It should be "4 3 true true true 9"
	@Test
	def void testLambdaWithComplexBody() {
		val exampleObjects = newArrayList("4", 3, true, "9")

		exampleObjects.forEach [
			var x = 13
			for (y : 1 .. x) {
				if (it.toString.length % y == 0) {
					doSomething()
				}
			}
		// ...
		]
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testMapFunction() {
		// assertArrayEquals(#[/*result?*/] as int[], (1 .. 3).map[it * 3 + 2])
		assertArrayEquals(#[5, 8, 11], (1 .. 3).map[it * 3 + 2])
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testTypeFilterFunction() {
		// assertEquals(/*result?*/ -1, #["4", 3, true, "9"].filter(Number).get(0))
		assertEquals(3, #["4", 3, true, "9"].filter(Number).get(0))
	}

	// TODO: Will the test past?
	@Test
	def void testExistsFunction() {
		assertFalse((1 .. 10).exists[it > 10])
	}

	// TODO: Will the test pass?
	@Test
	def void testForAllFunction() {
		assertTrue((1 .. 10).forall[it < 11])
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testFindFirstFunction() {
//		assertEquals( /*result?*/ -1, (1 .. 10).findFirst[it > 5].intValue)
		assertEquals(6, (1 .. 10).findFirst[it > 5].intValue)
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testFindLastFunction() {
		//assertEquals( /*result?*/ -1, (1 .. 10).findLast[it < 5].intValue)
		assertEquals(4, (1 .. 10).findLast[it < 5].intValue)
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testReduceFunction() {
		// assertEquals(/*result?*/-1, (1 .. 10).filter[it % 2 == 0].reduce[i1, i2|i1 + i2].intValue)
		assertEquals(30, (1 .. 10).filter[it % 2 == 0].reduce[i1, i2|i1 + i2].intValue)
	}

	/* Just for the sake of completeness (no lambdas here) */
	@Test
	def void testHeadFunction() {
		assertEquals(1, (1 .. 10).head.intValue)
	}

	@Test
	def void testLastFunction() {
		assertEquals(10, (1 .. 10).last.intValue)
	}

	@Test
	def void testTailFunction() {
		assertEquals("2, 3, 4, 5", (1 .. 5).tail.join(', '))
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testTakeFunction() {
		// assertEquals("result?", (1 .. 10).take(5).join(', '))
		assertEquals("1, 2, 3, 4, 5", (1 .. 10).take(5).join(', '))
	}

	// TODO: Test fails. Try to predict the actual result.
	@Test
	def void testDropFunction() {
		// assertEquals("result?", (1 .. 10).drop(5).join(', '))
		assertEquals("6, 7, 8, 9, 10", (1 .. 10).drop(5).join(', '))
	}

	/* Some advice: Do not chain too many collection processing calls! Makes your code unreadable!
	 * Be kind to your fellow developers :-) */
	// TODO: Rewrite call chain using properly named intermediate results
	@Test
	def void testInappropriatelyLongAndComplicatedlambdaChain() {

//		val result = (10 .. 1).map[toString].sortBy[it].fold(0)[i1, String s2|i1 + println(s2).parseInt]
//		assertEquals(55, result)

		val integerStrings = (10..1).map[toString]
		val integerStringsInAscendingOrder = integerStrings.sortBy[it]
		val sum = integerStringsInAscendingOrder.fold(0)[int aggregator, String str | println(str); aggregator + str.parseInt()]
		assertEquals(55, sum)
	}
}
