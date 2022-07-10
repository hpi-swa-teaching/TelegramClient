chat
mockUnloadedSuperGroupChat

	^ TCCSuperGroupChat new
		id: 3;
		photoId: self mockImageId;
		title: 'SupergroupMockChat';
		lastMessageSnippet: 'lastSupergroupMessage';
		canSendMessages: true;
		yourself