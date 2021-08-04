instance creation
newGetMe

	^ TCCRequest
		newWithType: 'getMe'
		from: {}