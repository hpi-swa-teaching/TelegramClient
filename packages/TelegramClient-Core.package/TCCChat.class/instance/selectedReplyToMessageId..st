accessing
selectedReplyToMessageId: aNumber
	
	selectedReplyToMessageId := aNumber.
	self triggerEvent: #updateReplyToMessageId