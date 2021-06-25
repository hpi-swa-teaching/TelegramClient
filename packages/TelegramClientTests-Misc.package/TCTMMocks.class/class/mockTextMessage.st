message
mockTextMessage

	^ TCCTextMessage new
		chat: self mockPrivateChat;
		core: self mockCore;
		senderID: self mockUser1 id;
		isOutgoing: false;
		date: self mockMessageDate;
		id: self mockMessageID;
		text: self mockMessageText