adding
addNewestMessage: aMessage

	| newDate oldDate |
	newDate := aMessage date asDate.
	oldDate := self lastMessageDate asDate.
	(newDate > oldDate) ifTrue: [self triggerEvent: #addBottomDayDivider withArguments: {newDate . self id}].
	self messageIds addFirst: aMessage id.
	self messageDictionary at: aMessage id put: aMessage.
	self triggerEvent: #newMessage with: aMessage.