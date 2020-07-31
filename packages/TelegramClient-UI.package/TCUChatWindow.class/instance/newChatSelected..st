initialization
newChatSelected: aChat

	| messageListReversed |
	messageListReversed := aChat messages reverse.
	self welcomeMessage hide.
	self inputBar show.
	self selectedChat: aChat.
	self showChatMessages: messageListReversed from: 0.