initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: (((anEvent at: 'chat') at: 'type') at: 'supergroup_id')