testing
partialGroupMembersTestFor: aCoreChat

	self core userStore: TCTMMocks mockUserStore.
	aCoreChat core: self core.
	aCoreChat loadInfo.
	1 seconds wait.
	self assert: (aCoreChat members allSatisfy: [:member |
		((TCTMMocks mockUser1 id = member id) or: [TCTMMocks mockUser2 id = member id]).
		]).
	self assert: 2 equals: aCoreChat members size.