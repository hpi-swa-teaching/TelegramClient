chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		photoId: self mockImageId;
		title: 'SupergroupMockChat';
		lastMessageText: 'lastSupergroupMessage';
		canSendMessages: true;
		yourself