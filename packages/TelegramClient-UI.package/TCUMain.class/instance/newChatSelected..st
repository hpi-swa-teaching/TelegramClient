initialization
newChatSelected: aChat

	self core getChatHistoryFrom: aChat id.
	self chatWindow newChatSelected: aChat.