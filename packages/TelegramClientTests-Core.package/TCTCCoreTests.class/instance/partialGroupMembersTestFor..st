testing
partialGroupMembersTestFor: aChat

	self core users: TCTMMocks mockUserPromises.
	aChat core: self core.
	aChat loadInfo.
	1 seconds wait.
	self assert: (aChat members allSatisfy: [:member |
		((TCTMMocks mockUser1 id = member id) or: [TCTMMocks mockUser2 id = member id]).
		]).
	self assert: 2 equals: aChat members size.