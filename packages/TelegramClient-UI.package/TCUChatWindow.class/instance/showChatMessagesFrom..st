initialization
showChatMessagesFrom: lowestMessage

	| messageListReversed |
	self flag: #todo.
	messageListReversed := self selectedChat messages reversed.
	messageListReversed removeLast.
	self messageListWindow clearMessages.
	self messageListWindow lowestVisibleMessage: lowestMessage.

	1 to: messageListReversed size - lowestMessage do: [: x |
		self messageListWindow addMessageAtBottom: (messageListReversed at: x)].

	messageListReversed size < (lowestMessage + 20) ifTrue: [
		self owner getChatHistoryFrom: self selectedChat.].