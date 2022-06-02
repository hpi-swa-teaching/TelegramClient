chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		photoId: self mockImageId;
		title: 'SupergroupMockChat';
		lastMessage: 'lastSupergroupMessage';
		canSendMessages: true;
		yourself