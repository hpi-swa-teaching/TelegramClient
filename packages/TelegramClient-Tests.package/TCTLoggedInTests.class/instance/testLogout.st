testing
testLogout
	<timeout: 30 "seconds">

	self core authHandler logout.
	10 seconds wait.
	self assert: self core authHandler isAuthStateClosed.