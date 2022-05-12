drawing
addChatMessageList

	self
		chatMessageList: (TCUChatMessageList new
			height: self height - self class defaultInputfieldHeight - self class defaultTitleBarHeight;
			width: self width;
			color: Color white;
			topLeft: self topLeft + (0 @ self class defaultTitleBarHeight);
			hide;
			yourself);
		addMorph: self chatMessageList.