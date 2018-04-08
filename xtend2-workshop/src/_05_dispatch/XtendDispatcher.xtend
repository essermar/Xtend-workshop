package _05_dispatch

import java.math.BigInteger

/*
 * Dispatch methods, a.k.a: multimethod or polymorphic dispatch.
 * Simulate dynamic method binding; i.e.: binding based on the runtime-types
 * of a call's arguments.
 * Remember: In Java, binding to overloaded method happens at compile-time.
 * Achieved via if-instanceof-cast-call cascades in the generated code.
 */

class XtendDispatcher {

	/** Demo dispatch with single parameter */
	// Need Void paramater to catch null
	def dispatch doSomething(Void nullArg) { "null" }
	// Dispatch method with most specific parameter type is considered first
	def dispatch doSomething(Object o) { "o" }
	def dispatch doSomething(Number n) { "n" }
	def dispatch doSomething(BigInteger bi) { "bi" }
	

	/** Demo dispatch with multiple parameters */
	/* Dispatch methods with multiple parameters are bound by
	 * evaluating the parameter types from left to right
	 */
	def dispatch doSomething(Object o, Integer b) { "a" }
	def dispatch doSomething(Number o, Object b) { "b" }
	def dispatch doSomething(Integer o, Number b) { "c" }

	/** Demo generator */
	def dispatch generate(Void nullArg) {
		"null"
	}
	def dispatch generate(Object o) {
		"This is some object"
	}
	def dispatch generate(String str) {
		"This is a string!";
	}
	def dispatch generate(Integer integer) {
		"This is an integer!";
	}
	def dispatch generate(Number num) {
		"This is a number!";
	}	
}