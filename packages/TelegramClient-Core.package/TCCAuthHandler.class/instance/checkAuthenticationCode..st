accessing
checkAuthenticationCode: aString

	self client send: (TCCRequest
		newWithType: 'checkAuthenticationCode'
		from: {'code' -> aString}).