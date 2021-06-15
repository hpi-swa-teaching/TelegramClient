chat
mockUnloadedBasicGroupChat

	^ TCCBasicGroupChat new
		id: -2;
		groupId: 2;
		title: 'GroupMockChat';
		type: 'chatTypeBasicGroup';
		lastMessage: 'lastBasicGroupMessage';
		canSendMessages: true;
		yourself