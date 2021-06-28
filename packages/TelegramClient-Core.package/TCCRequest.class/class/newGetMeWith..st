instance creation
newGetMeWith: anExtraString

	^ TCCRequest
		newWithType: 'getMe'
		from: {'@extra' -> anExtraString}