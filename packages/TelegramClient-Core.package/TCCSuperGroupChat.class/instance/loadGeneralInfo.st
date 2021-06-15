loading
loadGeneralInfo

	self core client send: (
		TCCRequest newWithType: 'getSupergroupFullInfo' from: {
				'supergroup_id'->self groupId.
				'@extra'->self groupId
			}).

	self core registerCallback: [:aSupergroupFullInfoEvent |
		self
			memberCount: (aSupergroupFullInfoEvent at: 'member_count');
			description: (aSupergroupFullInfoEvent at: 'description').]
		with: self groupId asString.