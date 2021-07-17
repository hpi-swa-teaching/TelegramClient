event handling
selectChat: aChatListItem

	aChatListItem select.
	self
		selectedChat: aChatListItem chat;
		triggerEvent: #newChatSelected with: aChatListItem chat