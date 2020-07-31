accessing
addNewMessage: aMessage

	self messages addFirst: aMessage.
	self triggerEvent: #newMessage with: aMessage.