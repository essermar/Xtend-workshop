package _05_dispatch;

import static org.junit.Assert.*;

import java.math.BigInteger;

import org.junit.Before;
import org.junit.Test;

/**
 * Method dispatching: Calling a specific method implementation at runtime. If
 * possible, Java tries to bind calls early, at compile-time. Cheap! Binding
 * algorithm (simplified): Find all method definitions that match the call's
 * name and whose parameters are compatible with the static types of the call's
 * arguments. If multiple applicable method definitions are found, choose the
 * most specific one. That is the one whose parameter types most closely match
 * the call's argument types.
 */
public class JavaDispatchTest {

	private JavaDispatcher javaDispatcher;

	@Before
	public void setUp() {
		javaDispatcher = new JavaDispatcher();
	}

	/**
	 * This test demonstrates how dispatching works in Java. 'doSomething' is bound
	 * at compile-time. Binding can be redirected with an explicit type cast
	 */
	// TODO: Fill in the expected results. Then run the tests to check your
	// predictions. Hint: Remember that 'doSomething' is bound at compile-time!
	//
	@Test
	public void testJavaDispatchOneParameter() {
//		 assertEquals("<result>", javaDispatcher.doSomething("str"));
		assertEquals("o", javaDispatcher.doSomething("str"));
//		 assertEquals("<result>", javaDispatcher.doSomething(3));
		assertEquals("n", javaDispatcher.doSomething(3));
//		 assertEquals("<result>", javaDispatcher.doSomething(BigInteger.valueOf(3)));
		assertEquals("bi", javaDispatcher.doSomething(BigInteger.valueOf(3)));
//		 assertEquals("<result>", javaDispatcher.doSomething((Object) BigInteger.valueOf(3)));
		assertEquals("o", javaDispatcher.doSomething((Object) BigInteger.valueOf(3)));
	}

	/**
	 * Common situation in generators: Generator interface receives model elements
	 * of a common base-type;e.g.: Object. Needs to decide what to generate from
	 * those objects based on their runtime-type. Model is usually sealed. So real
	 * polymorphism is not an option. In Java often solved with if-else cascades
	 * that determine runtime-type with 'instanceof' and then down-cast to bind to a
	 * more specific generator method.
	 * Xtend has a built-in solution for this: dispatch methods!
	 */
	// TODO: Fix the test by adding the appropriate implementation
	// in class 'JavaDispatcher'
	@Test
	public void testCommonWorkaroundForStaticDispatchInCodeGenerators() {
		Object i = 4;
		assertEquals("This is an integer!", javaDispatcher.generate(i));
	}

	/**
	 * When multiple definitions match the same call, the Java compiler sometimes
	 * cannot decide which method is the most specific. Because for one method to be
	 * more specific than another, all its parameter types have to be more specific
	 * than the other's.
	 * Xtend has a built-in solution for this: dispatch methods!
	 */
	// TODO: Fix the test. Hint: Use type-casts.
	@Test
	public void testJavaDispatchTwoParameters() {
		assertEquals("a", javaDispatcher.doSomething("x", 3));

//		assertEquals("b", javaDispatcher.doSomething(BigInteger.valueOf(3), 3));
		assertEquals("b", javaDispatcher.doSomething(BigInteger.valueOf(3), (Object) 3));
//		assertEquals("c", javaDispatcher.doSomething(3, 3));
		assertEquals("c", javaDispatcher.doSomething((Integer) 3, (Number) 3));
	}
}
