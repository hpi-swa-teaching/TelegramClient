events
loadBasicGroupInfoFor: aChat with: aBasicGroupId

	self client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
		'basic_group_id'->aBasicGroupId.
		'@extra'->aBasicGroupId}).
	
	self app pendingRequests at: aBasicGroupId asString put: [:aBasicGroupFullInfoEvent |
		aChat
			memberCount: ((aBasicGroupFullInfoEvent at: 'members') size);
			description: (aBasicGroupFullInfoEvent at: 'description').].