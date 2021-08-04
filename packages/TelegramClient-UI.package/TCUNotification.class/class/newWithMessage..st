instance creation
newWithMessage: aCoreMessage

	^ self basicNew
		chat: aCoreMessage chat;
		message: aCoreMessage;
		initialize