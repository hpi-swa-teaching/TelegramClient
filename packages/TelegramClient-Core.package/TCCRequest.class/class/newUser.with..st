instance creation
newUser: aUserId with: anExtraString

	^ TCCRequest
		newWithType: 'getUser'
		from: {
			'user_id'-> aUserId.
			'@extra'-> anExtraString
		}