instance creation
newGetOwnProfile

	^ TCCRequest
		newWithType: 'getMe'
		from: {'@extra' -> 'getMe'}