events
handleMessageEvent: anEvent

	|callbackID message|
	message := anEvent at: 'message'. 
	callbackID := 'Message: ', (message at: 'id'), (message at: 'chat_id'). 
	self pendingMessages at: callbackID put: [:aUserEvent | 
		self chatsHandler handleNewMessage: anEvent from: aUserEvent]. 
	self getUser: ((message at: 'sender') at: 'user_id') with: callbackID