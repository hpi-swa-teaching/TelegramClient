accessing
updateReplyMessage

	self inputBar submorphsDo: #abandon.
	self addSendButton.
	self addTextInputField.
	self selectedChat selectedReplyToMessageId == self selectedChat class defaultSelectedReplyToMessageId ifFalse: [
		self addReplyMessage.
	].