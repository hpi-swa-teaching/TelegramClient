library calls
logout

	self client send: (TCCRequest
		newWithType: 'logOut'
		from: {}).