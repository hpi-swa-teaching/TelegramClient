events
addChat: aChatEvent
	
	| chat |
	chat := (TCCChat newFromChatEvent: aChatEvent).
	chat core: self core. 
	
	self core chats
			add: chat;
			notify.