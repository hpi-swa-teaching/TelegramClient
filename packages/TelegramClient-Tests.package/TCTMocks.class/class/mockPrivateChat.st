chat
mockPrivateChat

	^ TCCChat new
		id: 1;
		title: 'PrivateMockChat'; 
		type: 'chatTypePrivate'; 
		lastMessage: 'lastPrivateMessage'; 
		canSendMessages: true;
		muted: false