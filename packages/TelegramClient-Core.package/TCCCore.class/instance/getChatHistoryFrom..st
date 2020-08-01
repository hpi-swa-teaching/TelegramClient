accessing
getChatHistoryFrom: aChatID

	self chatsHandler
		getChatHistoryFrom: aChatID
		with: (self chats getChat: aChatID) messages last messageId
		limit: self chatsHandler defaultMessageLimit.