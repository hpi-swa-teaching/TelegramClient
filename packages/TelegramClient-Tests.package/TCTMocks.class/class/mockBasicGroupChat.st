chat
mockBasicGroupChat

	| chat |
	chat := TCCChat new. 
	chat 
		id: 2; 
		title: 'GroupMockChat'; 
		type: 'chatTypeBasicGroup'; 
		lastMessage: 'lastBasicGroupMessage'; 
		canSendMessages: true; 
		memberCount: 5. 
	^chat 