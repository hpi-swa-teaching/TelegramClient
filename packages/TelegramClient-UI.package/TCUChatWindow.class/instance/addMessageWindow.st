drawing
addMessageWindow

	self
		messageListWindow: (TCUChatMessageList new
			height: self height - self class defaultInputfieldHeight - self class defaultTitleBarHeigth;
			width: self width;
			color: Color white;
			topLeft: self topLeft + (0@self class defaultTitleBarHeigth);
			hide);
		addMorph: self messageListWindow.