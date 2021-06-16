user
mockUserJson2

	^ JsonObject newFrom: {
		'@type' -> 'user'.
		'id' -> self mockUser2 id.
		'first_name' -> self mockUser2 firstName.
		'last_name' -> self mockUser2 lastName.
		'username' -> self mockUser2 username.
		'@extra' -> self mockUser2 id asString
	}