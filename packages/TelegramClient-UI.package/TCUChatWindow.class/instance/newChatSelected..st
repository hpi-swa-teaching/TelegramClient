initialization
newChatSelected: aChat

	| messageListReversed |
	messageListReversed := aChat messages reverse.
	self welcomeMessage hide.
	self inputBar show.
	aChat = self selectedChat 
		ifTrue: [self showChatMessagesFrom: self messageListWindow lowestVisibleMessage.]
		ifFalse: [
			self selectedChat: aChat.
			self showChatMessagesFrom: 0.]
		