events
loadSuperGroupInfoFor: aChat with: aSupergroupId

	self client send: (TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
			'supergroup_id'->aSupergroupId.
			'@extra'->aSupergroupId}).
	
	self core
		registerCallback: [:aSupergroupFullInfoEvent |
			aChat
				memberCount: (aSupergroupFullInfoEvent at: 'member_count');
				description: (aSupergroupFullInfoEvent at: 'description').]
		with: aSupergroupId.