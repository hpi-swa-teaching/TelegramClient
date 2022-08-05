drawing
scrollToMessage: aMessageId

	| messageItem |
	messageItem := self items detect: [:item | item messageId = aMessageId].
	self scrollToShow: messageItem