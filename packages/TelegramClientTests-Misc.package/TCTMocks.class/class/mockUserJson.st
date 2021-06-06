user
mockUserJson

	^ JsonObject newFrom: {
		'@type' -> 'user'.
		'id' -> self mockUser id.
		'first_name' -> self mockUser firstName.
		'last_name' -> self mockUser lastName.
		'username' -> self mockUser username.
		'@extra' -> (self mockUser id asString)
	}