events
addNewMessage: anEvent

	| aMessage |
	
	aMessage := (TCCMessage new
		message: ((((anEvent at: 'message') at: 'content') at: 'text') at: 'text');
		senderId: ((anEvent at: 'message') at: 'sender_user_id')).
		
	(self app chats getChat: ((anEvent at: 'message') at: 'chat_id')) messages addFirst: aMessage.