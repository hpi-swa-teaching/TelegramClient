accessing
setChatInfos: anEvent

	| chatId |
	
	Transcript show: 'WORKED!!', Character cr, Character cr.
	
	"chatId := anEvent at: 'id'.
	(self chats getChat: chatId) 
		fullName: (anEvent at: 'title');
		order: (anEvent at: 'order')."
		
	self triggerEvent: #newChatLoaded.