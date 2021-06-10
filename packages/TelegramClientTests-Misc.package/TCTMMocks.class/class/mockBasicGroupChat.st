chat
mockBasicGroupChat

	^ self mockUnloadedSuperGroupChat
		memberCount: self mockUsers size;
		description: 'basic group description';
		members: self mockUsers;
		infoLoaded: true