sending
sendPollMessage: aPoll

	self core send: (TCCRequest newSendPollMessage: aPoll to: self id).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.