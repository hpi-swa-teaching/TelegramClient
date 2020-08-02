accessing
showChatMessagesFrom: lowestMessage

	self clearMessages.
	self lowestVisibleMessage: lowestMessage.

	self chat messages reversed collect: [:message | self addMessageAtBottom: message]
		from: 1
		to: self chat numberOfMessages - lowestMessage.

	self chat numberOfMessages < (lowestMessage + 20) ifTrue: [
		self core getChatHistoryFrom: self chat id].