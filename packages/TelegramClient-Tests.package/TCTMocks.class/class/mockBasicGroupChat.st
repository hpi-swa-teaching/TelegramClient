chat
mockBasicGroupChat

	| chat |
	chat := TCCGroup new. 
	chat id: 2; 
		title: 'GroupMockChat'; 
		type: 'chatTypeBasicGroup'; 
		lastMessage: 'lastBasicGroupMessage'; 
		canSendMessages: true; 
		memberCount: 5. 
	^chat 