library calls
sendMessage: aString to: aChatId

	self core send: (TCCRequest newSendMessage: aString to: aChatId).