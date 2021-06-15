chat
mockBasicGroupChat

	^ self mockUnloadedBasicGroupChat
		memberCount: self mockUsers size;
		description: 'basic group description';
		members: self mockUsers;
		infoLoaded: true;
		yourself