accessing
addMessage: aMessage

	self messages add: aMessage.
	self triggerEvent: #newMessage with: aMessage.