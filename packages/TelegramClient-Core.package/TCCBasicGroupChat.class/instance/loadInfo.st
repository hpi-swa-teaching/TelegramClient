loading
loadInfo

	self core client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
		'basic_group_id'->self groupId.
		'@extra'->self groupId}).
	self core pendingRequests at: self groupId asString put: [:aBasicGroupFullInfoEvent |
		self
			memberCount: ((aBasicGroupFullInfoEvent at: 'members') size);
			description: (aBasicGroupFullInfoEvent at: 'description').
		self addMembersFrom: (aBasicGroupFullInfoEvent at: 'members').
		]