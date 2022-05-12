adding
addOldestMessage: aMessage

	self messages add: aMessage.
	self triggerEvent: #loadedMessage with: aMessage.