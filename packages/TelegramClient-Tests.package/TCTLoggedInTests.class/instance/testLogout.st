testing
testLogout

	self core authHandler logout.
	10 seconds wait.
	self assert: self core authHandler isAuthStateClosed.