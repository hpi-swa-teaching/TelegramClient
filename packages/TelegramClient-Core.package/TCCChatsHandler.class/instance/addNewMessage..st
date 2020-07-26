events
addNewMessage: anEvent

	| aMessage aChat|
	
	aMessage := (TCCMessage new
		message: ((((anEvent at: 'message') at: 'content') at: 'text') at: 'text');
		senderId: (((anEvent at: 'message') at: 'sender_user_id'));
		chatID: ((anEvent at: 'message') at: 'chat_id');
		messageId: ((anEvent at: 'message') at: 'id')).
		
	aChat := (self app chats getChat: ((anEvent at: 'message') at: 'chat_id')).
	(((aChat messages notEmpty) and: (aChat messages first)) messageId equals: aMessage messageId)
		ifFalse: [aChat messages addFirst: aMessage.].
	
	self app triggerEvent: #newMessageReceived with: aMessage.