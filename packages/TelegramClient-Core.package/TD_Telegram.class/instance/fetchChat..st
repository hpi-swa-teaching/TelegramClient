nil
fetchChat: chatId
	self isLibraryConnected ifFalse: [ ^ nil ].
	client send: (TD_getChat chatId: chatId).