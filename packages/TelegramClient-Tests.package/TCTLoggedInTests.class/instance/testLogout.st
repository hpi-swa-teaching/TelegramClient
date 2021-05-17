testing
testLogout

	self assert: self core authHandler isAuthStateClosed not.
	self core authHandler logout.
	
	[self core authHandler isAuthStateClosed]
		whileFalse: [3 seconds wait].