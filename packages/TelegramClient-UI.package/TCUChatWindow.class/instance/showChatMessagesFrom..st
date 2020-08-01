initialization
showChatMessagesFrom: lowestMessage

	| messageListReversed |
	messageListReversed := self selectedChat messages reverse.
	self messageListWindow clearMessages.
	self messageListWindow lowestVisibleMessage: lowestMessage.

	1 to: messageListReversed size - lowestMessage do: [: x |
		self messageListWindow addMessageAtBottom: (messageListReversed at: x)].

	messageListReversed size < (lowestMessage + 10) ifTrue: [
		self owner getChatHistoryFrom: self selectedChat.].