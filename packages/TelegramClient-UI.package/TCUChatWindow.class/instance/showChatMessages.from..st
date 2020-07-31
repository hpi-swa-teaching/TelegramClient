initialization
showChatMessages: aMessageList from: lowestMessage

	| messageListReversed |
	messageListReversed := selectedChat messages reverse.
	
	self messageListWindow show.
	self messageListWindow displayChat: self selectedChat.
	self messageListWindow lowestVisibleMessage: lowestMessage.

	1 to: messageListReversed size - lowestMessage do: [: x |
		self messageListWindow addMessage: (messageListReversed at: x) message senderId: (messageListReversed at: x) senderId].