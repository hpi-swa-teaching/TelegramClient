instance creation
newCheckAuthenticationCode: aString

	^ TCCRequest
		newWithType: 'checkAuthenticationCode'
		from: {'code' -> aString}