events
handleNewMessage: anEvent

	(((anEvent at: 'message') at: 'content') at: '@type') = 'messageText' ifTrue: [self addNewMessage: anEvent].

	