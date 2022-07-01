message
mockTextMessageWith: aCore with: aMessageId replyTo: aReplyMessageId in: aChatId

	^ TCCTextMessage new
		chat: aChatId;
		core: aCore;
		userId: self mockUser1 id;
		isOutgoing: false;
		senderType: #messageSenderUser;
		date: self mockMessageDate;
		id: aMessageId;
		text: self mockText;
		replyToMessageId: aReplyMessageId