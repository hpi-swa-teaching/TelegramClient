chat
mockSupergroupChat

	^ TCCSuperGroupChat new
		id: 3;
		title: 'SupergroupMockChat'; 
		type: 'chatTypeSupergroup'; 
		lastMessage: 'lastSupergroupMessage'; 
		canSendMessages: true; 
		memberCount: self mockUsers size;
		description: 'a very great super group description $$123';
		members: self mockUsers;
		infoLoaded: true