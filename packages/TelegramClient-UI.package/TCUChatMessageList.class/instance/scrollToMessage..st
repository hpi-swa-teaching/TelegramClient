drawing
scrollToMessage: aMessageId

	| messageItem |
	messageItem := self items detect: [:item | ((item isKindOf: TCUMessageWrapper)) and: [item messageId = aMessageId]].
	self scrollToShow: messageItem