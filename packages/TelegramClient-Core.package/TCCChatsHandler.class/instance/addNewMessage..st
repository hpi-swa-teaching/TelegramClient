events
addNewMessage: anEvent

	| aMessage aChatMessageList |
	
	aMessage := (TCCMessage new
		message: ((((anEvent at: 'message') at: 'content') at: 'text') at: 'text');
		senderId: (((anEvent at: 'message') at: 'sender_user_id'));
		chatID: ((anEvent at: 'message') at: 'chat_id');
		messageId: ((anEvent at: 'message') at: 'id')).
		
	aChatMessageList := (self app chats getChat: ((anEvent at: 'message') at: 'chat_id')) messages.
	(aChatMessageList notEmpty) ifTrue:[ (aChatMessageList first messageId equals: aMessage messageId)
		ifFalse: [aChatMessageList addFirst: aMessage.].].
	
	self app triggerEvent: #newMessageReceived with: aMessage.