sending
sendDocumentMessage: aDocumentPath

	self core send: (TCCRequest newSendDocumentMessage: aDocumentPath to: self id).
	self selectedReplyToMessageId: self class defaultSelectedReplyToMessageId.