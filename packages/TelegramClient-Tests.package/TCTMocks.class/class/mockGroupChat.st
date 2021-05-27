chat
mockGroupChat

	| chat |
	"'messages position positionKnown id title lastMessage waitingForUpdate numberOfRequestedMessages type canSendMessages memberCount'"
	chat := TCCChat new. 
	chat id: 2; 
		title: 'GroupMockChat'; 
		type: 'chatTypeBasicGroup'; 
		lastMessage: 'lastGroupMessage'; 
		canSendMessages: true; 
		memberCount: 5. 
	^chat 