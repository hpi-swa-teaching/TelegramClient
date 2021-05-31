events
loadBasicGroupChatMemberCountFor: aChat with: aBasicGroupId

	self client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
		'basic_group_id'->aBasicGroupId.
		'@extra'->aBasicGroupId}).
	self app pendingRequests at: aBasicGroupId put: [:aBasicGroupFullInfoEvent |
		aChat memberCount: ((aBasicGroupFullInfoEvent at: 'members') size).]