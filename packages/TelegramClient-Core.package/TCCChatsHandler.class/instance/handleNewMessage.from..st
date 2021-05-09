event handling
handleNewMessage: anEvent from: aUserEvent

	| message |
	message := anEvent at: 'message'.
	self addNewMessage: message.