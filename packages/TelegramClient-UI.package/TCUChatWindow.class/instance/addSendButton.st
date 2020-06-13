initialization
addSendButton

	self inputBar addMorph: (TCUButton new
		text: 'Send';
		on: #mouseDown send: #buttonSendPressed to: self).