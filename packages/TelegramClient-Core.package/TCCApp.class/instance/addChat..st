accessing
addChat: aChatEvent

	self chats add: (TCCChat new userId: (aChatEvent at: 'user_id')).