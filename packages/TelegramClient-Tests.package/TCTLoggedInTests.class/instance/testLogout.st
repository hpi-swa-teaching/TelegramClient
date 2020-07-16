testing
testLogout

	self core authHandler logout.
	10 seconds wait.
	Transcript show: self core authHandler isAuthStateClosed.
	self assert: self core authHandler isAuthStateClosed.