message
mockTextReplyMessageWith: aCore inChat: aChat

	^ TCCTextMessage new
		chat: aChat;
		core: aCore;
		userId: self mockUser1 id;
		isOutgoing: false;
		senderType: #messageSenderUser;
		date: self mockMessageDate;
		id: self mockMessageReplyMessageId;
		text: self mockText;
		replyToMessageId: self mockMessageId