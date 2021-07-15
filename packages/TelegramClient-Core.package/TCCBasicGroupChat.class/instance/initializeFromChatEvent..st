initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: (((anEvent at: 'chat') at: 'type') at: 'basic_group_id').
	self isChannel: false.