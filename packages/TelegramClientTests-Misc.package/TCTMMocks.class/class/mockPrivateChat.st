chat
mockPrivateChat

	^ TCCPrivateChat new
		id: 1;
		photoId: self mockImageId;
		title: 'PrivateMockChat';
		lastMessageText: 'lastPrivateMessage';
		canSendMessages: true;
		infoLoaded: true;
		muted: false;
		yourself