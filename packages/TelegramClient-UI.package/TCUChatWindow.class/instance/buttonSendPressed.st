initialization
buttonSendPressed

	self triggerEvent: #buttonSendPressed with: (Dictionary newFrom: {
		'chatId' -> self selectedChat id.
		'message' -> self textInputField contents}).

	self messageListWindow redrawMessages.
	self textInputField contents: ''.