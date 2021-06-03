chat
mockPrivateChat

	|chat|
	"'messages position positionKnown id title lastMessage waitingForUpdate numberOfRequestedMessages type canSendMessages memberCount'"
	chat := TCCChat new. 
	chat id: 1; 
		title: 'PrivateMockChat'; 
		lastMessage: 'lastPrivateMessage'; 
		type: 'chatTypePrivate'; 
		canSendMessages: true.
	^chat 