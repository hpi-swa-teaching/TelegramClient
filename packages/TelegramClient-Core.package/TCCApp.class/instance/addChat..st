accessing
addChat: aChatEvent

	| chat chatId |
	
	chatId := ((aChatEvent at: 'chat') at: 'id').
	chat := TCCChat new id: chatId.
	chat title ifNil: [self chatsHandler getChatInfos: chat id].
	chat order: (aChatEvent at: 'chat' at: 'order').
	
	self chats add: chat.