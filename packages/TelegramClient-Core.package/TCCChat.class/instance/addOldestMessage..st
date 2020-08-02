adding
addOldestMessage: aMessage

	self messages add: aMessage.
	self triggerEvent: #newMessage with: aMessage.