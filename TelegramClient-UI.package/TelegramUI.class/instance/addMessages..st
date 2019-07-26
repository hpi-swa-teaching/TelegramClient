sending
addMessages: messages

	messages messages do: [:message |
		self addMessage: message].
	self changed: #messageList.
	(self dependents at: 7) scrollToBottom.
	"This might not have been all messages, call again if received more than 0 messages"
	(messages total_count >0 and: messageCache size < 50) ifTrue:[ |lastMsg|
		lastMsg := messages messages first.
		backend fetchMessagesFor: lastMsg chat_id startingAt: lastMsg id]