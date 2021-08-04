loading
loadInfo

	self core
		send: (TCCRequest newGetBasicGroupFullInfoOf: self groupId)
		thenDo: [:aBasicGroupFullInfoEvent |
			self
				memberCount: (aBasicGroupFullInfoEvent at: 'members') size;
				description: (aBasicGroupFullInfoEvent at: 'description');
				addMembersFrom: (aBasicGroupFullInfoEvent at: 'members').
			].