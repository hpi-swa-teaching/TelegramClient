event handling
newChatSelected: aChat
	
	self welcomeMessage hide.
	self inputBar show.
	self titleBar delete.
	self
		selectedChat: aChat;
		addTitleBar.
		
	self messageListWindow show.
	self messageListWindow displayChat: aChat.