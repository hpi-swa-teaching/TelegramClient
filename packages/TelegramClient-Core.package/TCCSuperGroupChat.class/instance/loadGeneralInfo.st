loading
loadGeneralInfo
			
	self core
		send: (TCCRequest newGetSuperGroupFullInfoOf: self groupId)
		thenDo: [:aSupergroupFullInfoEvent |
			self
				memberCount: (aSupergroupFullInfoEvent at: 'member_count');
				description: (aSupergroupFullInfoEvent at: 'description')
			].
