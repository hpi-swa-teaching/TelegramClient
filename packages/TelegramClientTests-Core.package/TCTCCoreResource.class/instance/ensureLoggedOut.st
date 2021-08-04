controlling
ensureLoggedOut

	self core authenticationHandler isAuthStateClosed ifFalse: [
		self core authenticationHandler logout.
		[self core authenticationHandler isAuthStateClosed]
			whileFalse: [1 seconds wait].
	]