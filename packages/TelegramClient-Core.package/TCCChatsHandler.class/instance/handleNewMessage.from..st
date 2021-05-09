event handling
handleNewMessage: anEvent from: aUserEvent

	| message user |
	message := anEvent at: 'message'.
	user := TCCUser newFrom: aUserEvent. 
	self addNewMessage: message from: user.