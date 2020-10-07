event handling
handleNewMessage: anEvent

	| message |
	
	message := anEvent at: 'message'.
	self addNewMessage: message.