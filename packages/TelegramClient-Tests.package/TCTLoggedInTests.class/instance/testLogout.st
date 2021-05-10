testing
testLogout

	self core authHandler logout.
	1 seconds wait.
	self assert: self core authHandler isAuthStateClosed.