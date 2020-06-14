accessing
sendPhoneNumber

	self client send: (TCCRequest
		newWithType: 'setAuthenticationPhoneNumber'
		from: {'phone_number' -> '9996621234'}).