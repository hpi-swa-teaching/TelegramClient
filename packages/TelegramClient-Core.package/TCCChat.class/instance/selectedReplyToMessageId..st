accessing
selectedReplyToMessageId: aMessageId

	aMessageId = selectedReplyToMessageId
		ifTrue: [selectedReplyToMessageId := self class defaultSelectedReplyToMessageId]
		ifFalse: [selectedReplyToMessageId := aMessageId].

	self triggerEvent: #updateReplyToMessageId.
