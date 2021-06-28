instance creation
newLogOut

	^ TCCRequest
		newWithType: 'logOut'
		from: {}