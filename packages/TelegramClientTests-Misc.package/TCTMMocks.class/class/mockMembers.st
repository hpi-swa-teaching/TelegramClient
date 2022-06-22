user
mockMembers

	^ {
		JsonObject newFrom: {'member_id' -> (JsonObject newFrom: {'user_id' -> self mockUser1 id})}.
		JsonObject newFrom: {'member_id' -> (JsonObject newFrom: {'user_id' -> self mockUser2 id})}
	}