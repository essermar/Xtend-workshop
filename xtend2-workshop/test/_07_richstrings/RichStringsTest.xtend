package _07_richstrings

import org.junit.Before
import org.junit.Test
import static org.junit.Assert.*

class RichStringsTest {

	RichStrings richStrings

	@Before
	def void setUp() {
		richStrings = new RichStrings
	}

	@Test
	def void testBasicRichString() {
		// Java-version of expectation: "/*\tHelloWorld.c\t*/\n#include <stdio.h>\nmain() {\n\tprintf(\"Hellö, world!\");\n}\n"
		assertEquals('''
			/*	HelloWorld.c	*/
			#include <stdio.h>
			main() {
				printf("Hellö, world!");
			}
		'''.toString(),
			richStrings.printRichStringWithBasicFormatting.toString())
	}

	@Test
	def void testRichStringWithEmbeddedExpressions() {
		assertEquals('''
			/*	HelloWorld.c	*/
			#include <stdio.h>
			main() {
				printf("Hello, world! Hello, foo
					and bar
					and baz! Today is 2018-04-17");
			}
		'''.toString(), richStrings.printRichStringWithEmbeddedExpressions())
	}

	@Test
	def void testRichStringWithEmbeddedComment() {
		assertEquals('''
			This is a string with embedded comments.
		'''.toString(), richStrings.printRichStringWithEmbeddedComment())
	}

	@Test
	def void testRichStringWithEmbeddedConditions() {
		assertEquals('''
			<html>
				<body>
					«getExpectedString()»
				</body>
			</html>
		'''.toString(), richStrings.printRichStringWithEmbeddedTemplateConditions())
	}

	private def getExpectedString() {
		if (richStrings.isWeekend) {
			"Woohoo!"
		} else {
			"Can't wait for the weekend to begin!"
		}
	}

	@Test
	def void testRichStringWithEmbeddedTemplateLoopSpanningSeveralLines() {
		assertEquals('''
			<html>
			    <body>
			START    Knock 1!
			    Knock 2!
			    Knock 3!
			    Knock 4!
			    Knock 5!
			END    </body>
			</html>
		'''.toString(), richStrings.printRichStringWithEmbeddedTemplateLoopSpanningSeveralLines())
	}

	@Test
	def void testRichStringWithEmbeddedTemplateLoopOnSingleLine() {
		assertEquals('''
			<html>
			    <body>
			        START
			        Knock 1! 
			        Knock 2! 
			        Knock 3! 
			        Knock 4! 
			        Knock 5! 
			        END
			    </body>
			</html>
		'''.toString(), richStrings.printRichStringWithEmbeddedTemplateLoopOnSingleLine())
	}

}
