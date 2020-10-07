event handling
buttonSendPressed

	self triggerEvent: #buttonSendPressed with: (Dictionary newFrom: {
		'chatId' -> self selectedChat id.
		'message' -> self textInputField contents}).

	self textInputField contents: ''.