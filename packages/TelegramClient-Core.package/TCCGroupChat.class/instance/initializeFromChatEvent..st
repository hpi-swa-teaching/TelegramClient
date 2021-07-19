initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: ((anEvent at: 'type') at: self groupKey).