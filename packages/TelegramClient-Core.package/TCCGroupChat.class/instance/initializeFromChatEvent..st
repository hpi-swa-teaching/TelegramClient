initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: ((anEvent at: 'type') at: self groupKey).
	((anEvent at: 'type') at: 'is_channel') ifNotNil: [
		self isChannel: ((anEvent at: 'type') at: 'is_channel').
	].