loading
loadMembers

	| callbackID |
	callbackID := self core
		registerCallback: [:aSupergroupMembersEvent |
			self addMembersFrom: (aSupergroupMembersEvent at: 'members')].
	
	self core client send: (TCCRequest
		newWithType: 'getSupergroupMembers'
		from: {'supergroup_id'->self groupId.
			'offset'->self members size.
			'limit'->self class defaultLimit.
			'@extra'->callbackID}).