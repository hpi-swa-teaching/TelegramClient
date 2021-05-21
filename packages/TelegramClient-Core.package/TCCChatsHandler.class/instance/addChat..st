events
addChat: aChatEvent

	self core chats
		add: (TCCChat newFromChatEvent: aChatEvent);
		notify.