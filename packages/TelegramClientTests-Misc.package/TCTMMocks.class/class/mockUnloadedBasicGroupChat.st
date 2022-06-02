chat
mockUnloadedBasicGroupChat

	^ TCCBasicGroupChat new
		id: -2;
		groupId: 2;
		photoId: self mockImageId;
		title: 'GroupMockChat';
		lastMessage: 'lastBasicGroupMessage';
		canSendMessages: true;
		yourself