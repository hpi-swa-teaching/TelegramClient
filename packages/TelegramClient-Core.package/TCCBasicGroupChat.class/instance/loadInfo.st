loading
loadInfo

	| callbackID |
	callbackID := self core registerCallback: [:aBasicGroupFullInfoEvent |
		self
			memberCount: (aBasicGroupFullInfoEvent at: 'members') size;
			description: (aBasicGroupFullInfoEvent at: 'description');
			addMembersFrom: (aBasicGroupFullInfoEvent at: 'members').
		].
	self core client send: (TCCRequest
		newWithType: 'getBasicGroupFullInfo'
		from: {
		'basic_group_id'->self groupId.
		'@extra'->callbackID}).