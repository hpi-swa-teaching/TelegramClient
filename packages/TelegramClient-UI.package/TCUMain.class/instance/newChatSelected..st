event handling
newChatSelected: aChat

	self chatsList
		deselectChats;
		selectedChat: TCCNullChat new.
	self chatWindow newChatSelected: aChat.