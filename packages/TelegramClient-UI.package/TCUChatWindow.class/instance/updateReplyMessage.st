accessing
updateReplyMessage

	| inputFieldText |
	inputFieldText := self textInputField contents asString.
	self inputBar submorphsDo: #abandon.
	self addSendButton.
	self addTextInputField.
	self selectedChat selectedReplyToMessageId = self selectedChat class defaultSelectedReplyToMessageId ifFalse: [
		self addReplyMessage.
	].
	self textInputField contents: inputFieldText.
