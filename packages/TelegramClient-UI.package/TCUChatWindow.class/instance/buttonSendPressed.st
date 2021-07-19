event handling
buttonSendPressed

	| messageString |
	
	messageString := self textInputField contents withBlanksTrimmed.
	messageString ifNotEmpty: [self selectedChat sendMessage: messageString].

	self textInputField contents: ''.