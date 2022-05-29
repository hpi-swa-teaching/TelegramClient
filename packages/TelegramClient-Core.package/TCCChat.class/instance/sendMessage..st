sending
sendMessage: aString

	self core send: (TCCRequest newSendMessage: aString to: self id asReplyTo: self selectedReplyToMessageId).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.