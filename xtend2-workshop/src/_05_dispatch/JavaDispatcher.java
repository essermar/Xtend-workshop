package _05_dispatch;

import java.math.BigInteger;

public class JavaDispatcher {
	/** Demo dispatch with single parameter */
	public String doSomething(Object o) {
		return "o";
	}
	public String doSomething(Number n) {
		return "n";
	}
	public String doSomething(BigInteger bi) {
		return "bi";
	}

	/** Demo dispatch with multiple parameters */
	public String doSomething(Object o, Integer b) {
		return "a";
	}
	public String doSomething(Number o, Object b) {
		return "b";
	}
	public String doSomething(Integer o, Number b) {
		return "c";
	}

	/** Demo generator */
	public String generate(Object obj) {
//		throw new RuntimeException("Not yet implemented!");
		if (obj instanceof Integer) {
			return doGenerate((Integer) obj);
		} else if (obj instanceof Number) {
			return doGenerate((Number) obj);
		} else if (obj instanceof String) {
			return doGenerate((String) obj);
		} else if (obj instanceof Object) {
			return doGenerate(obj);
		} else {
			return "null";
		}
	}

	private String doGenerate (Object obj) {
		return "This is some object!";
	}
	private String doGenerate(String str) {
		return "This is a string!";
	}
	private String doGenerate(Integer integer) {
		return "This is an integer!";
	}
	private String doGenerate(Number num) {
		return "This is a number!";
	}

}
