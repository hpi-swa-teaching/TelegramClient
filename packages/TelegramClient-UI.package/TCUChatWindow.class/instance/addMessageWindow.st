initialization
addMessageWindow

	self
		messageListWindow: (TCUChatMessageList new
			height: self height - self defaultInputfieldHeight;
			width: self width;
			color: Color white;
			topLeft: self topLeft;
			hide);
		addMorph: self messageListWindow.