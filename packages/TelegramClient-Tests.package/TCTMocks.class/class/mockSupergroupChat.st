chat
mockSupergroupChat

	| chat |
	chat := TCCGroup new. 
	chat id: 3; 
		title: 'SupergroupMockChat'; 
		type: 'chatTypeSupergroup'; 
		lastMessage: 'lastSupergroupMessage'; 
		canSendMessages: true; 
		memberCount: 8972981. 
	^chat 