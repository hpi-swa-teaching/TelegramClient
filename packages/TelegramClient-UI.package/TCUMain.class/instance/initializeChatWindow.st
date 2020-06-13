initialization
initializeChatWindow

	self chatWindow
		height: (self height - self defaultHeaderHeight);
		width: (self width - self chatsList width);
		position: (self position + (self chatsList width @ self defaultHeaderHeight));
		addInputField.
		
	self addMorph: self chatWindow.