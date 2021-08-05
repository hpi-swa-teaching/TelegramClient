events
addChat: anEvent

	| chat |
	chat := TCCChat newFromChatEvent: (anEvent at: 'chat').
	chat core: self core.

	self chats add: chat.