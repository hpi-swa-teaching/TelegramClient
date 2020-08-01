accessing
addNewMessage: aMessage

	self messages add: aMessage afterIndex: 1.
	self triggerEvent: #newMessage with: aMessage.