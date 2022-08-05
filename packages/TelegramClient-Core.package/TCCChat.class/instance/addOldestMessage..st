adding
addOldestMessage: aMessage

	| newDate oldDate |
	newDate := aMessage date asDate.
	oldDate := self oldestLoadedMessageDate asDate.
	(newDate < oldDate) ifTrue: [
		self oldestLoadedMessage isFirstMessageOfDay: true.
		aMessage isLastMessageOfDay: true].
	self messageIds add: aMessage id.
	self addMessage: aMessage.
	self triggerEvent: #loadedMessage with: aMessage.