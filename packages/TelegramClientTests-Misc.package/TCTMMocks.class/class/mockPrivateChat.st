chat
mockPrivateChat

	^ TCCPrivateChat new
		id: 1;
		title: 'PrivateMockChat';
		lastMessage: 'lastPrivateMessage';
		canSendMessages: true;
		infoLoaded: true;
		muted: false;
		yourself