instance creation
newWithMessage: aCoreMessage

	^ self basicNew
		chat: aCoreMessage chat;
		messageModel: aCoreMessage;
		initialize