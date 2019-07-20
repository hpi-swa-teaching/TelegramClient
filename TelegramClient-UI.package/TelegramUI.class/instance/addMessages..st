as yet unclassified
addMessages: messages

messages messages do: [:message |
	message chat_id = self getSelectedChatId ifFalse: [ ^ nil].
	messageCacheChatId = self getSelectedChatId ifFalse: [ messageCache removeAll. messageCacheChatId := self getSelectedChatId].
	messageCache detect: [:e | e id = message id] ifNone: [
	messageCache addLast: message.
	(userCache includesKey: message sender_user_id) ifFalse: [
	backend fetchUser: message sender_user_id.
	].
	].
].
self changed: #messageList.
(self dependents at: 7) scrollToBottom.
"This might not have been all messages, call again if received more than 0 messages"
((messages total_count > 0) and: (messageCache size < 50)) ifTrue:[ |lastMsg|
	lastMsg := messages messages first.
	backend fetchMessagesFor: lastMsg chat_id startingAt: lastMsg id.
]