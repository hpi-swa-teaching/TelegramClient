events
loadSuperGroupChatMemberCountFor: aChat with: aSupergroupId

	self client send: (TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
		'supergroup_id'->aSupergroupId.
		'@extra'->aSupergroupId}).
	self app pendingRequests at: aSupergroupId put: [:aSupergroupFullInfoEvent |
		aChat memberCount: (aSupergroupFullInfoEvent at: 'member_count').].