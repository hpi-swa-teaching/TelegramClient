chat
mockSupergroupChat

	^ self mockUnloadedSuperGroupChat
		memberCount: self mockUsers size;
		description: 'a very great super group description $$123';
		members: self mockUsers;
		infoLoaded: true