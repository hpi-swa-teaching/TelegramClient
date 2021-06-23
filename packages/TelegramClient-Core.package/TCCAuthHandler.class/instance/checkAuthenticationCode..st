library calls
checkAuthenticationCode: aString

	self core send: (TCCRequest
		newWithType: 'checkAuthenticationCode'
		from: {'code' -> aString}).