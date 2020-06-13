initialization
initializeChatWindow

	self chatWindow: (TCUChatWindow 
		newWithHeight: (self height - self defaultHeaderHeight) 
		width: (self width - self chatsList width)).

	self chatWindow 
		position: (self position + (self chatsList width @ self defaultHeaderHeight));
		when: #buttonSendPressed send: #sendMessage: to: self.
	self addMorph: self chatWindow.