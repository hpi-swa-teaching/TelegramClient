drawing
addMessageWindow

	self
		messageListWindow: (TCUChatMessageList new
			height: self height - self class defaultInputfieldHeight;
			width: self width;
			color: Color white;
			topLeft: self topLeft;
			hide);
		addMorph: self messageListWindow.