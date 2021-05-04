instance creation
newFromNewChatEvent: anEvent
	| chat |
	chat := anEvent at: 'chat'.
	^ self new
		title: (chat at: 'title');
		id: (chat at: 'id');
		type: ((chat at: 'type') at: '@type');
		order: ((chat at: 'id') asString)