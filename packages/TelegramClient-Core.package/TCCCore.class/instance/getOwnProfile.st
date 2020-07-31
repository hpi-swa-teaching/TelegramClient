initialization
getOwnProfile

	self client send: (TCCRequest
		newWithType: 'getMe'
		from: {}).