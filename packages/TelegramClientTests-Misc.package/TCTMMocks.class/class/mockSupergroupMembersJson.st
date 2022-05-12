user
mockSupergroupMembersJson

	^ JsonObject newFrom: {
		'@type' -> 'supergroupFullInfo'.
		'total_count'-> self mockMembers size.
		'members' -> self mockMembers
	}