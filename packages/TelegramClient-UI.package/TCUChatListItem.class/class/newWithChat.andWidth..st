creation
newWithChat: aChat andWidth: aWidth

	^ self new
		chat: aChat;
		width: aWidth;
		addTitle;
		addBorder;
		yourself