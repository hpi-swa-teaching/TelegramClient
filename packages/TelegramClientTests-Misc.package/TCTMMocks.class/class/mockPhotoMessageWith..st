message
mockPhotoMessageWith: aCore

	^ TCCPhotoMessage new
		chat: self mockPrivateChat;
		core: aCore;
		senderID: self mockUser1 id;
		isOutgoing: false;
		date: self mockMessageDate;
		id: self mockMessageID;
		caption: self mockText;
		width: 521;
		height: 265;
		fileId: self mockImageId