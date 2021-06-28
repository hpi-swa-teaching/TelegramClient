loading
loadGeneralInfo
	
	| callbackId |
	callbackId := self core
		registerCallback: [:aSupergroupFullInfoEvent |
			self
				memberCount: (aSupergroupFullInfoEvent at: 'member_count');
				description: (aSupergroupFullInfoEvent at: 'description')].
			
	self core send: (TCCRequest newGetSuperGroupFullInfoOf: self groupId with: callbackId).
