as yet unclassified
addMessage: message
	message chat_id = self getSelectedChatId ifFalse: [ ^ nil].
	messageCacheChatId = self getSelectedChatId ifFalse: [ messageCache removeAll. messageCacheChatId := self getSelectedChatId].
	messageCache detect: [:e | e id = message id] ifNone: [
	messageCache addFirst: message.
	self changed: #messageList.
	(self dependents at: 5) scrollToBottom.
	].
	