chat
mockBasicGroupChat

	^ TCCBasicGroupChat new
		id: 2;
		title: 'GroupMockChat'; 
		type: 'chatTypeBasicGroup'; 
		lastMessage: 'lastBasicGroupMessage'; 
		canSendMessages: true; 
		memberCount: self mockUsers size;
		description: 'basic group description';
		members: self mockUsers;
		infoLoaded: true