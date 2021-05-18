accessing
mockUserWith: aUserId and: anExtra

	^ (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'user'.
		'id' -> aUserId.
		'first_name' -> 'Test'.
		'last_name' -> 'User'.
		'username' -> 'testuser'.
		'@extra' -> anExtra
	}))