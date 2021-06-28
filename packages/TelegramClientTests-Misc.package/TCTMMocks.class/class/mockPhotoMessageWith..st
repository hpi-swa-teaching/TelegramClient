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
		width: self mockPhotoWidth;
		height: self mockPhotoHeight;
		fileId: self mockImageId