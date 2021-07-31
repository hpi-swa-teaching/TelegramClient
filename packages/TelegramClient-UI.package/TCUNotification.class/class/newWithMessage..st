instance creation
newWithMessage: aMessage

	^ self basicNew
		chat: aMessage chat;
		message: aMessage;
		initialize