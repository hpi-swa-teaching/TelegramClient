instance creation
newFromNewChatEvent: anEvent

	^ self new
		title: (anEvent at: 'title');
		id: (anEvent at: 'id')