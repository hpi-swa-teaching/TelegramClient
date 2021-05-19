accessing
mockUserEvent

	^ (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'user'.
		'id' -> self userId.
		'first_name' -> self userFirstName.
		'last_name' -> self userLastName.
		'username' -> self username.
		'@extra' -> self extra
	}))