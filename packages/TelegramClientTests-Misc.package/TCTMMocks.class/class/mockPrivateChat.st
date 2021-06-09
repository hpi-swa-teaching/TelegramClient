chat
mockPrivateChat

	^ TCCPrivateChat new
		id: 1;
		title: 'PrivateMockChat'; 
		type: 'chatTypePrivate'; 
		lastMessage: 'lastPrivateMessage'; 
		canSendMessages: true;
		infoLoaded: true