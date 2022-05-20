accessing
selectedReplyToMessageId: aNumber

	aNumber == selectedReplyToMessageId ifTrue: [ selectedReplyToMessageId := self class defaultSelectedReplyToMessageId]
	ifFalse: [selectedReplyToMessageId := aNumber].

	self triggerEvent: #updateReplyToMessageId