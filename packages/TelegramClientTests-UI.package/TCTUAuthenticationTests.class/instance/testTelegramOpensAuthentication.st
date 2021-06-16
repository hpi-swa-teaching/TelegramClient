testing
testTelegramOpensAuthentication

	self wantsToTest: (TCUTelegram newWithCore: self core) currentWindow.
	self assert: TCUAuthentication equals: (self subject morphs first class).
