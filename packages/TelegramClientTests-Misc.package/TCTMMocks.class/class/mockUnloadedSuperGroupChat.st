chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		title: 'SupergroupMockChat';
		type: 'chatTypeSupergroup';
		isChannel: false;
		lastMessage: 'lastSupergroupMessage';
		canSendMessages: true;
		yourself