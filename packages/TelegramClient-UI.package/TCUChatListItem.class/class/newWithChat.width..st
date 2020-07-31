creation
newWithChat: aChat width: aWidth

	^ self new
		chat: aChat;
		width: aWidth;
		addTitle;
		addLastMessage;
		addBorder;
		yourself