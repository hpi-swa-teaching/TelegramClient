event handling
newChatSelected: aChat

	self welcomeMessage hide.
	self inputBar submorphsDo: #abandon.
	self addSendButton.
	self addbuttonMenuButton.
	self addTextInputField.
	self inputBar show.
	self titleBar delete.
	self infoPage delete.
	self
		selectedChat: aChat;
		addTitleBar;
		addHiddenInfoPage;
		addHiddenPollEditor.
	self chatMessageList show.
	self chatMessageList displayChat: aChat.