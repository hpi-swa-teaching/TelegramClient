library calls
checkAuthenticationPassword: aString

	self core send: (TCCRequest newCheckAuthenticationPassword: aString).