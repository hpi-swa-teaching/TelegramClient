loading
loadGeneralInfo
	
	| callbackID |
	callbackID := self core
		registerCallback: [:aSupergroupFullInfoEvent |
			self
				memberCount: (aSupergroupFullInfoEvent at: 'member_count');
				description: (aSupergroupFullInfoEvent at: 'description')].
			
	self core client send: (TCCRequest
		newWithType: 'getSupergroupFullInfo'
		from: {'supergroup_id'->self groupId.
			'@extra'->callbackID}).
