api-calls
fetchMessagesFor: chatId startingAt: aMessageId
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (TD_getChatHistory chatId: chatId messageId: aMessageId)