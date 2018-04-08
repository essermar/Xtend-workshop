package _02_classes

class ContainerWithStaticMembers {

	public static val String STRING_CONSTANT = "This is a constant."

	public static val ContainerWithStaticMembers INSTANCE = new ContainerWithStaticMembers()

	def static boolean isStaticMethod() {
		return true
	}

	def static boolean isTheEmptyString(String string) {
		return (string !== null && string.length() === 0)
	}

	def String getResult() {
		return "result"
	}

	static class TheInnerClass {
		def String getResult() {
			return "innerResult"
		}
	}
}
