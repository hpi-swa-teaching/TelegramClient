adding
addNewestMessage: aMessage

	self messageIds addFirst: aMessage id.
	self messageDictionary at: aMessage id put: aMessage.
	self triggerEvent: #newMessage with: aMessage.