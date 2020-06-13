initialization
buttonSendPressed
	
	self triggerEvent: #buttonSendPressed: with: (Dictionary newFrom: {
		'chatId' -> self selectedChat chatId,
		'message' -> self textInputField contents}).