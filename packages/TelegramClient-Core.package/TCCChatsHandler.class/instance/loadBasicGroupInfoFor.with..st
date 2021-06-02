events
loadBasicGroupInfoFor: aChat with: aBasicGroupId

	self client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
			'basic_group_id'->aBasicGroupId.
			'@extra'->aBasicGroupId}).
	
	self core
		registerCallback: [:aBasicGroupFullInfoEvent |
			aChat
				memberCount: (aBasicGroupFullInfoEvent at: 'members') size;
				description: (aBasicGroupFullInfoEvent at: 'description').]
		with: aBasicGroupId.