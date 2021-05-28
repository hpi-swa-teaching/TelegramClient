events
handleMessageEvent: anEvent

	| message userID|
	message := anEvent at: 'message'.
	userID := (message at: 'sender') at: 'user_id'.
	[self chatsHandler handleNewMessage: message from: (self users getUserFor: userID)] fork
