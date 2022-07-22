chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		photoId: self mockImageId;
		title: 'SupergroupMockChat';
		lastMessageText: 'lastSupergroupMessage';
		lastMessageSenderId: 1673511834;
		lastMessageSenderName: 'Test User';
		canSendMessages: true;
		yourself