message
mockTextMessageWith: aCore

	^ TCCTextMessage new
		chat: self mockPrivateChat;
		core: aCore;
		userId: self mockUser1 id;
		isOutgoing: false;
		senderType: #messageSenderUser;
		date: self mockMessageDate;
		id: self mockMessageId;
		text: self mockText