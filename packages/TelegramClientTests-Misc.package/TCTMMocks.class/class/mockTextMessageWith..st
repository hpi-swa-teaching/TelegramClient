message
mockTextMessageWith: aCore

	^ TCCTextMessage new
		chat: self mockPrivateChat;
		core: aCore;
		senderID: self mockUser1 id;
		isOutgoing: false;
		date: self mockMessageDate;
		id: self mockMessageID;
		text: self mockText