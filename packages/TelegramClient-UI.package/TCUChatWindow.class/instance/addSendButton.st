drawing
addSendButton

	self sendButton: (TCUButton new
		text: 'Send';
		on: #mouseUp send: #buttonSendPressed to: self;
		name: 'sendMessage';
		yourself).
	self inputBar addMorph: self sendButton.