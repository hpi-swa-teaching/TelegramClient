events
addChat: aChatEvent

	| chat |
	
	chat := TCCChat newFromNewChatEvent: aChatEvent.

	self app chats
		add: chat;
		notify.