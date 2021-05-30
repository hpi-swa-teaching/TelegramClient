events
loadSuperGroupMembersFor: aChat

	self client send: (TCCRequest
		newWithType: 'getSupergroupMembers'
		from: {
		'supergroup_id'->aChat groupId.
		'offset'->0.
		'limit'->20. 
		'@extra'->('#',aChat groupId)}).
	
	self app pendingRequests at: ('#',aChat groupId asString) put: [:aSupergroupMembersEvent |
		self addMembersFor: aChat with: (aSupergroupMembersEvent at: 'members').
		].