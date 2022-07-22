chat
mockPrivateChatLastMessageIsLoggedInUser

	^ TCCPrivateChat new
		id: 2;
		photoId: self mockImageId;
		title: 'PrivateMockChatLastMessageisLoggedInUser';
		lastMessageText: 'lastPrivateMessage';
		lastMessageSenderId: 0;
		lastMessageSenderName: 'LoggedIn User';
		canSendMessages: true;
		infoLoaded: true;
		muted: false;
		yourself