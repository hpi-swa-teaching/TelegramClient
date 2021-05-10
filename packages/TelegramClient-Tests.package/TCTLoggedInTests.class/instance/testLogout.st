testing
testLogout

	self core authHandler logout.
	2 seconds wait.
	self assert: self core authHandler isAuthStateClosed.