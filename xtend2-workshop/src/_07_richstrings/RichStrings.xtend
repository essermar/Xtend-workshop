package _07_richstrings

import java.time.LocalDate
import java.time.LocalDateTime
import java.time.DayOfWeek

/* 
 * Template expressions for printing large amounts of structured text.
 * Great for M2T or simply as a replacement for 'String.format(...)' in Java.
 * 
 * RichString: Multiline text (including grey space) + template expressions «» (with white space).
 * Allows separating template code formatting from printout formatting. 
 * All grey sections get printed exactly as they appear in the code starting
 * from the target documents left border.
 */
class RichStrings {

	def printRichStringWithBasicFormatting() {
		val rstring = '''
			/*	HelloWorld.c	*/
			#include <stdio.h>
			main() {
				printf("Hellö, world!");
			}
		'''
		println(rstring)
		rstring
	}

	/* Notice that overall indentation is preserved when evaluating expressions in templates! */
	def printRichStringWithEmbeddedExpressions() {
		val rstring = '''
			/*	HelloWorld.c	*/
			#include <stdio.h>
			main() {
				printf("Hello, world! Hello, «foo()»! Today is «LocalDate.of(2018,04,17)»");
			}
		'''
		println(rstring)
		rstring
	}

	private def foo() {
		'''
		foo
			and bar
			and baz'''
	}

	public def boolean isWeekend() {
		val today = LocalDateTime.now().dayOfWeek
		today == DayOfWeek.SATURDAY || today == DayOfWeek.SUNDAY
	}

	/* RichStrings may contain comments that are not visible when printing the string.
	 * CTRL+7 is your friend here.
	 */
	def printRichStringWithEmbeddedComment() {
		val rstring = '''
		This is a string with embedded comments.
		«««		This comment will not be visible in the output
	'''
		println(rstring)
		rstring
	}

	/* IF part of template condition controls indentation of if and else text with regard
	 * to the page's left border. Indentation of the if and else text with regard to the
	 * IF and ELSE parts of the template condition will not appear in the output. They 
	 * are pure whitespace.
	 */
	def printRichStringWithEmbeddedTemplateConditions() {
		val rstring = '''
			<html>
				<body>
					«IF isWeekend()»
						Woohoo!
					«ELSE»
						Can't wait for the weekend to begin!
					«ENDIF»
				</body>
			</html>
		'''
		println(rstring)
		rstring
	}

	/* Indentation is tricky to control when putting the FOR and ENDFOR tags on separate lines.*/
	def printRichStringWithEmbeddedTemplateLoopSpanningSeveralLines() {
		val rstring = '''
			<html>
			    <body>
			    «FOR i : 1 .. 5 BEFORE 'START' AFTER 'END'»
			    	Knock «i»!
			   «ENDFOR»
			    </body>
			</html>
		'''
		println(rstring)
		rstring
	}

	def printRichStringWithEmbeddedTemplateLoopOnSingleLine() {
		val rstring = '''
			<html>
			    <body>
			        «FOR i : 1 .. 5 BEFORE 'START\n' SEPARATOR '\n' AFTER '\nEND'»Knock «i»! «ENDFOR»
			    </body>
			</html>
		'''
		println(rstring)
		rstring
	}
}
