events
handleMessageEvent: anEvent

	|callbackID message|.
	message := anEvent at: 'message'. 
	callbackID := (message at: 'id') asString, (message at: 'chat_id'). 
	self registerCallback: 
		[:aUserEvent | self chatsHandler handleNewMessage: anEvent from: aUserEvent] 
		with: callbackID.
	super getUser: ((message at: 'sender') at: 'user_id') with: callbackID