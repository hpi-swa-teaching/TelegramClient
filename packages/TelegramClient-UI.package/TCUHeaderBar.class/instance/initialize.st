initialization
initialize

	super initialize.

	self
		borderWidth: 0;
		color: TCUDefaultValues colorGray;
		extent: self main width @ self class defaultHeight.

	self
		addTitle: 'Telegram';
		addLogoutButton;
		addCloseButton;
		addNewChatButton.