adding
addNewestMessage: aMessage

	self messages addFirst: aMessage.
	self triggerEvent: #newMessage with: aMessage.