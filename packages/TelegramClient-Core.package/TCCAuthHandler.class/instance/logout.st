accessing
logout

	self client send: (TCCRequest
		newWithType: 'logOut'
		from: {}).