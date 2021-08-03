instance creation
newWithHeight: aHeight width: aWidth

	^ self new
		height: aHeight;
		width: aWidth;
		addWelcomeMessage;
		addInputBar;
		addChatMessageList;
		addHiddenInfoPage