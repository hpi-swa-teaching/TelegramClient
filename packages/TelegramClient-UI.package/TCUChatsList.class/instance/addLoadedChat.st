accessing
addLoadedChat

	self items add: (self createChatListItem: self chats last).
	self addMorph: self items last.