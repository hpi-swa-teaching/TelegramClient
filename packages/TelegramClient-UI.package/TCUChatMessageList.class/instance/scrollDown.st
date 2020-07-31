accessing
scrollDown
	
	lowestVisibleMessage < 1 ifFalse: [
		self owner showChatMessages: self messages from: self lowestVisibleMessage - 1.].