events
addChat: aChatEvent

	| chat |
	
	chat := TCCChat newFromChatEvent: aChatEvent.

	self app chats
		add: chat;
		notify.