user
mockUserJson1

	^ JsonObject newFrom: {
		'@type' -> 'user'.
		'id' -> self mockUser1 id.
		'first_name' -> self mockUser1 firstName.
		'last_name' -> self mockUser1 lastName.
		'username' -> self mockUser1 username.
		'@extra' -> self mockUser1 id asString
	}