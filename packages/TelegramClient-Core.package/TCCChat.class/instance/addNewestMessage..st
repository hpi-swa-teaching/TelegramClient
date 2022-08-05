adding
addNewestMessage: aMessage

	| newDate oldDate |
	newDate := aMessage date asDate.
	oldDate := self lastMessageDate asDate.
	(newDate > oldDate) ifTrue: [
		aMessage isFirstMessageOfDay: true.
		self lastMessage isLastMessageOfDay: true.
		].
	self messageIds ifEmpty: [aMessage isFirstMessageOfDay: false].
	self messageIds addFirst: aMessage id.
	self messageDictionary at: aMessage id put: aMessage.
	self triggerEvent: #newMessage with: aMessage.