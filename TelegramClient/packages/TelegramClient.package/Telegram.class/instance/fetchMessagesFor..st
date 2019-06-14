nil
fetchMessagesFor: chatId
	self isLibraryConnected ifFalse: [ ^ nil ].
	^ client send: (TD_getChatHistory chatId: chatId).