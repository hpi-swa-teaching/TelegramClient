message
mockPhotoMessage

	^ TCCPhotoMessage new
		chat: self mockPrivateChat;
		core: self mockCore;
		senderID: self mockUser1 id;
		isOutgoing: false;
		date: self mockMessageDate;
		id: self mockMessageID;
		caption: self mockMessageText;
		width: 521;
		height: 265;
		fileId: 3