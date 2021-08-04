events
addChat: anEvent

	| chat |
	chat := TCCChat newFromChatEvent: (anEvent at: 'chat').
	chat core: self core.

	self core chats add: chat.