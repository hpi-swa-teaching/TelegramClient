handlers
getChatHistoryFrom: aChatID

	self chatsHandler
		getChatHistoryFrom: aChatID
		with: (self chats getChat: aChatID) messages last id
		limit: self chatsHandler class defaultMessageLimit.