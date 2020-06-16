as yet unclassified
newWithChatName: aChatName andWidth: aWidth

	^ self basicNew
		chatName: aChatName;
		initialize;
		width: aWidth;
		addTitle;
		addBorder;
		yourself