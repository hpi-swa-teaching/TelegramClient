creation
newWithHeight: aHeight width: aWidth

	^ self basicNew
		initialize;
		height: aHeight;
		width: aWidth;
		addWelcomeMessage;
		addInputBar