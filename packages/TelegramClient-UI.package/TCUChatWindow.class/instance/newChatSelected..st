initialization
newChatSelected: aChat

	self welcomeMessage hide.
	self inputBar show.
	self selectedChat: aChat.
	
	self messageListWindow show.
	self messageListWindow displayChat: aChat.