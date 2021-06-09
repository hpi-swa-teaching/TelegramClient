user
mockBasicGroupFullInfoJson

	^ JsonObject newFrom: {
		'@type' -> 'chat'.
		'description' -> 'some description'.
		'members' -> {
			JsonObject newFrom: {'@type' -> 'chatMember'. 'user_id'->5 }.
			JsonObject newFrom: {'@type' -> 'chatMember'. 'user_id'->6 }
		}
	}