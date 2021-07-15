initialization
initializeFromChatEvent: anEvent

	super initializeFromChatEvent: anEvent.
	self groupId: (((anEvent at: 'chat') at: 'type') at: 'supergroup_id').
	self isChannel: (((anEvent at: 'chat') at: 'type') at: 'is_channel').
	
	self isChannel ifTrue: [
		self initializeAsChannel. 
		]