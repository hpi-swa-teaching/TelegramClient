chat
mockBasicGroupChat

	^ TCCChat new
		id: 2;
		title: 'GroupMockChat'; 
		type: 'chatTypeBasicGroup'; 
		lastMessage: 'lastBasicGroupMessage'; 
		canSendMessages: true; 
		memberCount: 5