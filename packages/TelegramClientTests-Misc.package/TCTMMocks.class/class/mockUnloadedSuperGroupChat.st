chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		title: 'SupergroupMockChat';
		type: 'chatTypeSupergroup';
		lastMessage: 'lastSupergroupMessage';
		canSendMessages: true;
		yourself