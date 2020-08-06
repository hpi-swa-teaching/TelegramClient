event handling
scrollDown
	
	self lowestVisibleMessage < 1 ifFalse: [
		self showChatMessagesFrom: self lowestVisibleMessage - 1.].