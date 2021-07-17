initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: ((anEvent at: 'type') at: 'supergroup_id')