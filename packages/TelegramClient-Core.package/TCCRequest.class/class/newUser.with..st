instance creation
newUser: aNumber with: aString

	^ TCCRequest
		newWithType: 'getUser'
		from: {
			'user_id'-> aNumber.
			'@extra'-> aString
		}