initialization
addSendButton

	| sendButton |
	sendButton := TCUButton new text: 'Send'.
	self inputBar addMorph: sendButton.