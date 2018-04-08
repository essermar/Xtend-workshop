package _03_extensions

import java.math.BigDecimal

class AddsTwo {
	def BigDecimal addSomething(BigDecimal bigD) {
		bigD.add(2bd)
	}
}

class AddsThree {
	def BigDecimal addSomething(BigDecimal bigD) {
		bigD.add(3bd)
	}
}

class AddsFour {
	def static BigDecimal addSomething(BigDecimal bigD) {
		bigD.add(4bd)
	}
}

class AddsFive {
	def static BigDecimal addSomething(BigDecimal bigD) {
		bigD.add(5bd)
	}
}