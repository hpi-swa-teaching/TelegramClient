creation
newWithChatName: aChatName andWidth: aWidth

	^ self basicNew
		chatName: aChatName;
		initialize;
		width: aWidth;
		addTitle;
		addBorder;
		yourself.