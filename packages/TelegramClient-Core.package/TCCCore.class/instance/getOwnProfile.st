events
getOwnProfile

	self client send: (TCCRequest
		newWithType: 'getMe'
		from: {}).