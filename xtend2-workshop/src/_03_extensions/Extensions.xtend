package _03_extensions

import java.math.BigDecimal

class LocalExtension {
	// TODO: Participants have to come up with this method
	def addOne(BigDecimal bigD) {
		// bigD.add(1bd)
		bigD + 1bd
	}
}

class StaticExtensionProvider {
	def static boolean isTheEmptyString(String string) {
		return (string !== null && string.length() === 0)
	}
}

class Encryptor {
	def encrypt(Object object) {
		'totally secure'
	}
}
