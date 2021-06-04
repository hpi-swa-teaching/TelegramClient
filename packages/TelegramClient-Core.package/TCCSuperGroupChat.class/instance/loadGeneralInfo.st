loading
loadGeneralInfo

	self core client send: (TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {
		'supergroup_id'->self groupId.
		'@extra'->self groupId}).
	self core pendingRequests at: self groupId asString put: [:aSupergroupFullInfoEvent |
		self
			memberCount: (aSupergroupFullInfoEvent at: 'member_count');
			description: (aSupergroupFullInfoEvent at: 'description').].