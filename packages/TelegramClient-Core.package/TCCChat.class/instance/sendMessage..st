sending
sendMessage: aString

	self core send: (TCCRequest newSendMessage: aString to: self id).