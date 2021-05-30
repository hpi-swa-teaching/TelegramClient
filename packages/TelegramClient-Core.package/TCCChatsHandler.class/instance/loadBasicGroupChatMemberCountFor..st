events
loadBasicGroupChatMemberCountFor: aChat 

	self client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
		'basic_group_id'->aChat groupId.
		'@extra'->aChat groupId}).
	self app pendingRequests at: aChat groupId asString put: [:aBasicGroupFullInfoEvent |
		aChat memberCount: ((aBasicGroupFullInfoEvent at: 'members') size).
		]