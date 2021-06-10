user
mockMembers

	^ {
		JsonObject newFrom: {'user_id'->self mockUser1 id}
		.
		JsonObject newFrom: {'user_id'->self mockUser2 id}
	}