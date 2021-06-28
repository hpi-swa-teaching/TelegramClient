loading
loadInfo

	| callbackId |
	callbackId := self core registerCallback: [:aBasicGroupFullInfoEvent |
		self
			memberCount: (aBasicGroupFullInfoEvent at: 'members') size;
			description: (aBasicGroupFullInfoEvent at: 'description');
			addMembersFrom: (aBasicGroupFullInfoEvent at: 'members').
		].
	self core send: (TCCRequest newGetBasicGroupFullInfoOf: self groupId with: callbackId).