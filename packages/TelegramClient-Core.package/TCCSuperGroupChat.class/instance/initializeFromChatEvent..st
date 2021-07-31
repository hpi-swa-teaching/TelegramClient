initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self isChannel: ((anEvent at: 'type') at: 'is_channel').