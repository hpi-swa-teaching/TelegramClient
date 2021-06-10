user
mockBasicGroupFullInfoJson

	^ JsonObject newFrom: {
		'@type' -> 'basicGroupFullInfo'.
		'description' -> 'some description'.
		'members' -> self mockMembers
	}