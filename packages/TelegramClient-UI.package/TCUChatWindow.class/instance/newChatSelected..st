event handling
newChatSelected: aChat

	self welcomeMessage hide.
	self inputBar submorphsDo: #abandon.
	self addStickerButton.
	self addSendButton.
	self addTextInputField.
	self inputBar show.
	self titleBar delete.
	self infoPage delete.
	self
		selectedChat: aChat;
		addTitleBar;
		addHiddenInfoPage.

	self chatMessageList show.
	self chatMessageList displayChat: aChat.