accessing
setChatInfos: anEvent

	| chatId |
	
	chatId := anEvent at: 'id'.
	(self chats at: chatId) 
		fullName: (anEvent at: 'title');
		order: (anEvent at: 'order').
		
	self triggerEvent: #newChatLoaded.