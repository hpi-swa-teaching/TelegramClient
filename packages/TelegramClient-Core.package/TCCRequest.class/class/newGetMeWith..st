instance creation
newGetMeWith: aString

	^ TCCRequest
		newWithType: 'getMe'
		from: {'@extra' -> aString}