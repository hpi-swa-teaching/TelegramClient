accessing
checkAuthenticationCode

	self client send: (TCCRequest
		newWithType: 'checkAuthenticationCode'
		from: {'code' -> '22222'}).