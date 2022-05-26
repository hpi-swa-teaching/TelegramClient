adding
addOldestMessage: aMessage

	self messageIds add: aMessage id.
	self messageDictionary at: aMessage id put: aMessage.
	self triggerEvent: #loadedMessage with: aMessage.