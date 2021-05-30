events
loadSuperGroupChatMemberCountFor: aChat 

	self client send: (TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
		'supergroup_id'->aChat groupId.
		'@extra'->aChat groupId}).
	self app pendingRequests at: aChat groupId asString put: [:aSupergroupFullInfoEvent |
		aChat
			memberCount: (aSupergroupFullInfoEvent at: 'member_count');
			description: (aSupergroupFullInfoEvent at: 'description').].