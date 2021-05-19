events
addChat: aChatEvent

	self app chats
		add: (TCCChat newFromChatEvent: aChatEvent);
		notify.