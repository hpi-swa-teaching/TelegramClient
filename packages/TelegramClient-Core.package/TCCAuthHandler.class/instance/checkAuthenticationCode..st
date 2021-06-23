library calls
checkAuthenticationCode: aString

	self core send: (TCCRequest newCheckAuthenticationCode: aString).