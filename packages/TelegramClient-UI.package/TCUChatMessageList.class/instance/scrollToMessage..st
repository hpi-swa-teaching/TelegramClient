drawing
scrollToMessage: aMessageId

	| messageItem messageIndex |
	messageIndex := self chat messageIds reversed indexOf: aMessageId.
	messageItem := self items at: messageIndex.
	self scrollToShow: messageItem