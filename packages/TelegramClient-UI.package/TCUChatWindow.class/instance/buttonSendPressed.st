event handling
buttonSendPressed

	| messageString |
	
	messageString := self textInputField contents asString withBlanksTrimmed.
	messageString ifNotEmpty: [self selectedChat sendMessage: messageString].

	self textInputField contents: ''.
	self sendButton makeLighter. 