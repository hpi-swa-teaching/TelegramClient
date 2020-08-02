event handling
handleNewMessage: anEvent

	| message |
	
	message := anEvent at: 'message'.
	((message at: 'content') at: '@type') = 'messageText'
		ifTrue: [self addNewestMessage: message].