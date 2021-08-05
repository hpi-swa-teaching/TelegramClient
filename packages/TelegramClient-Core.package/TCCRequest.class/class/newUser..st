instance creation
newUser: aNumber

	^ TCCRequest
		newWithType: 'getUser'
		from: {
			'user_id'-> aNumber.
		}