events
handleNewMessage: anEvent

	| message |
	
	message := anEvent at: 'message'.
	((message at: 'content') at: '@type') = 'messageText'
		ifTrue: [self addNewMessage: message].