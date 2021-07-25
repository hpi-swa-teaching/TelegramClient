initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: ((anEvent at: 'type') at: self groupKey).
	self isChannel: (((anEvent at: 'chat') at: 'type') at: 'is_channel').
