loading
loadMembers

	| callbackID |
	callbackID := self core
		registerCallback: [:aSupergroupMembersEvent |
			self addMembersFrom: (aSupergroupMembersEvent at: 'members')].
	
	self core send: (
		TCCRequest newGetSuperGroupMembersOf: self groupId
			with: self members size
			until: self class defaultLimit
			with: callbackID
	).