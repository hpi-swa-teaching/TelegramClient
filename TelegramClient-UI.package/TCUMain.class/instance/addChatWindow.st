as yet unclassified
addChatWindow

	self 
		chatWindow: (TCUChatWindow new
			height: (self height - self defaultHeaderHeight);
			width: (self width - self chatsList width);
			position: (self position + (self chatsList width @ self defaultHeaderHeight)));
		addMorph: self chatWindow.
			