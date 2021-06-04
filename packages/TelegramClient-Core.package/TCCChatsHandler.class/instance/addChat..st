events
addChat: aChatEvent
	
	| chat |
	chat := (TCCChat newFromChatEvent: aChatEvent).
	chat core: self app. 
	
	self app chats
			add: chat;
			notify.