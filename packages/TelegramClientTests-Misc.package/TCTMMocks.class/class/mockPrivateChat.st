chat
mockPrivateChat

	^ TCCPrivateChat new
		id: 1;
		photoId: self mockImageId;
		title: 'PrivateMockChat';
		lastMessageText: 'lastPrivateMessage';
		lastMessageSenderId: 1673511834;
		lastMessageSenderName: 'Test User';
		canSendMessages: true;
		infoLoaded: true;
		muted: false;
		yourself