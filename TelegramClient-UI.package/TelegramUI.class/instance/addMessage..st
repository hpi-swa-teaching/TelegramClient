sending
addMessage: message
	message chat_id = self getSelectedChatId ifFalse: [ ^ nil].
	self setMessageCacheChatId.
	messageCache detect: [:e | e id = message id] ifNone: [
	messageCache addLast: message.
	(userCache includesKey: message sender_user_id) ifFalse: [
	backend fetchUser: message sender_user_id].
	self updateMessageList]
	