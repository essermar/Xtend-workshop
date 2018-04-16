/*******************************************************************************
 * Copyright (c) 2012 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
/* Taken from the official xtend-examples. Modified and extended. */
package _04_expressions

import org.junit.Test

import static org.junit.Assert.*

/* Almost everything is an expression in Xtend; i.e: returns a value of a certain type.
 * Simplest kind of expression: literals.
 */
class BasicExpressionsTest {

	/* TODO: Run the test and familiarize yourselves with the various types of literals */
	@Test
	def void testLiterals() {
		// String literals work with single or double quotes
		// Single quoted strings are multiline strings
		assertEquals('Hello', "Hello")

		// Number literals (big decimals (bd), float (f) and double (d) in this case)
		assertEquals(42, 20 + 20 + 1 * 2)
		assertEquals(42.00bd, 0.00bd + 42bd)
		assertEquals(42.0f, 42.0d + 0, 0)

		// Boolean literals
		assertEquals(true, !false)

		// Class literals (in Java: BasicExpressions.class)
		assertEquals(BasicExpressionsTest, this.getClass())

		// Alternatively use 'typeof' (mandatory for array types!) 
		assertEquals(typeof(BasicExpressionsTest), this.getClass())
	}

	/*  There are literals for lists, sets and maps
	 *  and numerous extension methods which make working with them
	 *  convenient (shown in later examples).
	 *  Collection literals produce immutable collections!
	 *  For creating mutable collections, there are a number of factory methods available 
	 *  (see class org.eclipse.xtext.xbase.lib.CollectionLiterals)
	 */
	/*  TODO: Fix the test. Hint: You will need to use mutable collections ;-)*/
	@Test
	def void testCollectionLiterals() {

		var list = #['Hello', ',']
		list = newArrayList(list)
		list.add('world!')
		assertEquals('world!', list.get(2))

		var set = #{1, 3, 5}
		set = newHashSet(set)
		set.add(7)
		assertEquals(4, set.size)

		// var map = #{'one' -> 1, 'two' -> 2, 'three' -> 3}
		var map = newHashMap('one' -> 1, 'two' -> 2, 'three' -> 3)
		map.put('four', 4)
		assertEquals(4, map.get('four'))

		/* Note that the type argument produced by the factory method below
		 * is inferred from the control flow. If you change the type of elements added,
		 * the inferred type will change accordingly. 
		 * Hint: You can inspect a variable's type by hovering the mouse above
		 * its name.
		 */
		val mutableList = newArrayList
		mutableList.add(new String)
		// mutableList.add(new Object)
		assertEquals(1, mutableList.size())
	}

	/* Control statements similar to Java (if-else, switch, try-catch, ...)
	 * But: (Almost) everything in Xtend is an expression and returns a value of a certain type.
	 * Except those expressions that are of type 'void';e.g.: loops.
	 */
	// TODO: Fix the test. Hint: Take a close look at the operators used.
	@Test
	def void testIfElseExpression() {

		/* 'if-else' looks like in Java, C, C++.
		 * But it's an expression so it can be used in more flexible ways:
		 */
		assertEquals(42, if ('text'.length == 4) {
			// if('foo' == 'BAR'.toLowerCase) 42 else -24 
			if('foo' != 'BAR'.toLowerCase) 42 else -24
		} else {
			39
		})
	}

	// TODO: Fix the test! Keep modifications to a minimum! 
	@Test
	def void testSimpleSwitchExpression() {
		/* In a switch, the first case test that evaluates to true wins.
		 * The argument that goes into the switch can be computed and bound to a variable.
		 */
		assertEquals('switched successfully', switch (String t : 'text') {
			// uses an explicit predicate
			case t.length > 8:
				t.toUpperCase // implicit break!
			// uses implicit comparison via equals()
			case 'text':
				'switched successfully' // implicit break!
			default:
				'Never happens!'
		})
	}

	// TODO: Fix the test! Keep modifications to a minimum!
	@Test
	def void testSwitchExpressionWithFallThroughs() {
		// switch with fall-through
		// val num = 1 
		val num = 3
		assertEquals('not a divisor of 4', switch num {
			case 1,
			case 2,
			case 4: 'divisor of 4'
			default: 'not a divisor of 4'
		})
	}

	/* The switch expression also supports type guards for case expressions.
	 * Argument is tested for each given guard type.
	 * If argument is of the given type, type-cast is performed and
	 * the test predicate is evaluated.
	 */
	// TODO: Fix the test. Hint: Take a look at the type guards!
	@Test
	def void testSwitchExpressionWithTypeGuards() {
		val Object someValue = 'A string?'
		assertEquals('A string? Yes, it is!', switch someValue {
			Number case 4: 'number'
//			Integer: someValue + (' Yes, it is!')
			String: someValue + (' Yes, it is!')
			default: 'default'
		})

	}

	/* Nothing really surprising here.
	 * Remember: All loops have type void. That means you cannot assign them to anything.
	 */
	@Test
	def void testLoops() {

		// for-each loop (with range)
		var counter = 1
		for (i : 1 .. 10) {
			assertEquals(counter, i)
			counter = counter + 1
		}

		// traditional for loop
		for (var i = 11; i > 0; i--) {
			assertEquals(counter, i)
			counter -= 1 // compound assignment
		}
		assertEquals(0, counter)

		// while loop
		val iterator = #[1, 2, 3, 4, 5].iterator
		counter = 1
		while (iterator.hasNext) {
			val i = iterator.next
			assertEquals(counter, i)
			counter = counter + 1
		}

		// do-while loop
		counter = 1
		do {
			counter++
		} while (counter < 4)
		assertEquals(4, counter)

	}
}
