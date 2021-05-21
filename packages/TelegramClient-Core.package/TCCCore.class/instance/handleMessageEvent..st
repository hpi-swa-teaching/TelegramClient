events
handleMessageEvent: anEvent

	|callbackID message userID|.
	message := anEvent at: 'message'. 
	callbackID := (message at: 'id') asString, (message at: 'chat_id'). 
	userID := (message at: 'sender') at: 'user_id'.
	[self chatsHandler handleNewMessage: message from: (self users getUserFor: userID)] fork