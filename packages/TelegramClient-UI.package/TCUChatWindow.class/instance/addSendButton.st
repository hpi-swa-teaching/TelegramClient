initialization
addSendButton

	| sendButton |
	sendButton := TCUButton new 
		text: 'Send';
		position: (self inputField position + (50 @ 0);
		on: #mouseDown send: #buttonSendPressed to: self).