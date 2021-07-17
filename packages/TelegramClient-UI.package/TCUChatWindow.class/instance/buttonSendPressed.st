event handling
buttonSendPressed

	| messageString |
	
	messageString := self textInputField contents withBlanksTrimmed.
	messageString isEmpty ifFalse: [self selectedChat sendMessage: messageString].

	self textInputField contents: ''.