instance creation
newUser: aUserId

	^ TCCRequest
		newWithType: 'getUser'
		from: {
			'user_id'-> aUserId.
		}