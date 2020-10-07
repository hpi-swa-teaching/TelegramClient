initialization
initializeChatWindow

	self chatWindow: (TCUChatWindow
		newWithHeight: (self height - self header height)
		width: (self width - self chatsList width)).

	self chatWindow
		position: (self position + (self chatsList width @ self header height));
		when: #buttonSendPressed send: #sendMessage: to: self.
	self addMorph: self chatWindow.