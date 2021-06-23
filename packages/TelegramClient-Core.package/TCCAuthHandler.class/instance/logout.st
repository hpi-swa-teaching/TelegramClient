library calls
logout

	self core send: (TCCRequest
		newWithType: 'logOut'
		from: {}).