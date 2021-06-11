events
handleMessageEvent: anEvent

	| message |
	message := anEvent at: 'message'.
	self chatsHandler handleNewMessage: message
