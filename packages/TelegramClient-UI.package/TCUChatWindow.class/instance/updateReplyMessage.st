accessing
updateReplyMessage

	| inputFieldText |
	inputFieldText := self textInputField contents asString.
	self inputBar submorphsDo: #abandon.
	self addStickerButton.
	self selectedChat isGroup ifTrue: [self addPollButton].
	self addFileButton.
	self addSendButton.
	self addTextInputField.
	self selectedChat selectedReplyToMessageId = self selectedChat class defaultSelectedReplyToMessageId ifFalse: [
		self addReplyMessage.
	].
	self textInputField contents: inputFieldText.
