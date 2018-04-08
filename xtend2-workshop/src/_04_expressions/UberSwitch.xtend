package _04_expressions

import java.math.BigInteger

class UberSwitch {

	def String doSwitch(Object o) {
		/* Remember: the first(!) match wins.
		 * Case condition: Either an explicit predicate or an implicit comparison via Objects#equal().
		 * Note the possible combination of type guard and case expression.
		 */
		switch (o) {
			case null: "null"
			BigInteger case 57bi: "57"
			BigInteger case o.intValue < 100: "small big integer"
			BigInteger: "big integer"
			Integer: "integer"
			Number: "number"
			String case o.toUpperCase.contains('V'): "String containing v or V"
			case o?.toString.length < 2: "short Object"
			default: o?.getClass()?.simpleName
		}
	}

}
