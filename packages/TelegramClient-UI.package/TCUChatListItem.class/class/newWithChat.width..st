instance creation
newWithChat: aChat width: aNumber

	^ self new
		chat: aChat;
		width: aNumber;
		addTitle;
		addLastMessage;
		addBorder;
		addPhoto;
		yourself