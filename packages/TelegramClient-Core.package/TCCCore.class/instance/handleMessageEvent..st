events
handleMessageEvent: anEvent

	|callbackID message|.
	message := anEvent at: 'message'. 
	callbackID := (message at: 'id') asString, (message at: 'chat_id'). 
	self pendingRequests at: callbackID put: [:aUserEvent | 
		self chatsHandler handleNewMessage: anEvent from: aUserEvent]. 
	self getUser: ((message at: 'sender') at: 'user_id') with: callbackID