testing
testTelegramOpensAuthentication

	self wantsToTest: (TCUTelegram newWithCore: self core) currentWindow.
	self subject class equals: TCUAuthentication.