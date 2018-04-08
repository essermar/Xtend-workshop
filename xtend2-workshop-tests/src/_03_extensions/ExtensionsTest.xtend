package _03_extensions

import org.junit.Test
import static extension _03_extensions.StaticExtensionProvider.isTheEmptyString

import static org.junit.Assert.*

/*
 * Extension methods allow adding new methods to existing types without modifying them.
 * May increase readability. Useful for integrating static utility functions.
 * Extension mechanism is based on a very simple syntactic trick:
 * Remove the first argument of an extension method invocation from the argument list and use it 
 * as the receiver of the method call instead.
 * Thus it appears as if the method was one of the argument type's member functions.
 */
class ExtensionsTest extends LocalExtension {

	/** 
	 * LOCAL
	 * Methods owned by the current class or a superclass are automatically available as
	 * extension methods. That includes static methods. Must be visible, of course.
	 */
	 // TODO: Add the required method 'addOne' to the 'Extensions' class
	@Test
	def void testLocalExtension() {
		/* Standard method call
		 * Notice the BigDecimal literals available in Xtend */
		assertEquals(1bd, addOne(0bd))
		/*  Extension method syntax:
		 *  Highlighting indicates that 'addOne' is an extension method call.
		 *  Parentheses are, of course, optional. */
		assertEquals(1bd, 0bd.addOne())
	}

	/** 
	 * XTEND LIBRARY 
	 * The Xtend library includes a lot of classes with static util methods that operate on frequently
	 * used Java SDK types. Examples: StringExtensions (for Strings), IterableExtensions (for Iterables)
	 * These methods are available inside Xtend classes as extension methods without further ado.
	 */
	// TODO: Find the import in the generated Java class. Hint: Use the 'Generated Code' view
	@Test
	def void testXtendLibraryExtension() {
		// Extension method syntax
		assertEquals('Hello', 'hello'.toFirstUpper())
		// Equivalent standard syntax on implicitly imported library class 'StringExtensions'
		assertEquals('Hello', StringExtensions.toFirstUpper('hello'))
	}

	/**
	 * STATIC EXTENSION IMPORT
	 * Use 'import static extension' to make static methods of an imported class locally available
	 * as extension methods.
	 */
	 // TODO: Add the required import statement to the import section in this file. Hint: The methods you
	 // are looking for are defined in class 'ContainerWithStaticMethods' seen earlier.
	@Test
	def void testExtensionImport() {
		val String nullString = null;

		// Extension method syntax
		assertFalse(nullString.isTheEmptyString())
		// Traditional call (static import!)
		assertFalse(isTheEmptyString(nullString))

		val theEmptyString = "";
		assertTrue(theEmptyString.isTheEmptyString())
	}
	
	/**
	 * EXTENSION PROVIDER
	 * By adding the extension keyword to a field, a local variable or a parameter declaration, 
	 * their instance methods are imported into the local scope and become available as extension methods.
	 */
	 // TODO: Make the tests compile by filling in the 'extension' keyword in the right place
	@Test
	def void testExtensionProvider() {
		val extension encryptor = new Encryptor
		val mySecret = new Object

		assertEquals("totally secure", encryptor.encrypt(mySecret))
		assertEquals("totally secure", encrypt(mySecret))
		assertEquals("totally secure", mySecret.encrypt())
	}
}
