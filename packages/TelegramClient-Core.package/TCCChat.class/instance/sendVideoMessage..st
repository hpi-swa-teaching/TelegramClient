sending
sendVideoMessage: aVideoPath

	self core send: (TCCRequest newSendVideoMessage: aVideoPath to: self id).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.