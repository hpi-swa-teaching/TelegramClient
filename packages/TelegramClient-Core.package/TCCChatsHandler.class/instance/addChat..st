events
addChat: aChatEvent

	| chat |
	chat := TCCChat newFromChatEvent: (aChatEvent at: 'chat').
	chat core: self core.

	self core chats add: chat.