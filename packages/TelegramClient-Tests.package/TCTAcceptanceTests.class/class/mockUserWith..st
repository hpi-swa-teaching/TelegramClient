accessing
mockUserWith: anExtra

	^ (TCCEvent newFromTDLibEvent: (Dictionary newFrom: {
		'@type' -> 'user'.
		'id' -> self mockUserID.
		'first_name' -> self mockUserFirstName.
		'last_name' -> self mockUserLastName.
		'username' -> self mockUsername.
		'@extra' -> (anExtra asString)
	}))