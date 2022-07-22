user
mockUserJson3

	^ JsonObject newFrom: {
		'@type' -> 'user'.
		'id' -> self mockUser3 id.
		'first_name' -> self mockUser3 firstName.
		'last_name' -> self mockUser3 lastName.
		'username' -> self mockUser3 username.
		'@extra' -> self mockUser3 id asString
	}