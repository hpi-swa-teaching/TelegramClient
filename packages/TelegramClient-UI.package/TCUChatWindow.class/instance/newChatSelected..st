initialization
newChatSelected: aChat

	self welcomeMessage hide.
	self inputBar show.
	self selectedChat: aChat.

	self messageListWindow show.
	self messageListWindow displayChat: aChat.
	aChat messages reversed do: [:message |
		self messageListWindow addMessage: message message senderId: message senderId].