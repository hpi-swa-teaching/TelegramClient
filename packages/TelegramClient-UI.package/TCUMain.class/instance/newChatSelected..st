event handling
newChatSelected: aChat

	self halt.
	self chatsList
		deselectChats;
		selectedChat: aChat.
	self chatWindow newChatSelected: aChat.