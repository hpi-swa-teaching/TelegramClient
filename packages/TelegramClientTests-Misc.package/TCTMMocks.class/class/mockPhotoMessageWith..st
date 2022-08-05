message
mockPhotoMessageWith: aCore

	^ TCCPhotoMessage new
		chat: (self mockPrivateChat core: aCore);
		core: aCore;
		userId: self mockUser1 id;
		isOutgoing: false;
		senderType: #messageSenderUser;
		date: self mockMessageDate;
		id: self mockMessageId;
		caption: self mockText;
		width: self mockPhotoWidth;
		height: self mockPhotoHeight;
		fileId: self mockImageId;
		replyToMessageId: 0