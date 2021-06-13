running
ensureLoggedOut
	
	self core authHandler isAuthStateClosed ifFalse: [
		self core authHandler logout.
		[self core authHandler isAuthStateClosed]
			whileFalse: [1 seconds wait].
	]