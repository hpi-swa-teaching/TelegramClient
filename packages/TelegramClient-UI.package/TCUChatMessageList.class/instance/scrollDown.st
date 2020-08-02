event handling
scrollDown
	
	self lowestVisibleMessage < 1 ifFalse: [
		self owner showChatMessagesFrom: self lowestVisibleMessage - 1.].