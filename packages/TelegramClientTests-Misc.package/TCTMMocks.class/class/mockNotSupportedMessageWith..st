message
mockNotSupportedMessageWith: aCore

	^ TCCNotSupportedMessage new
		chat: (self mockPrivateChat core: aCore);
		core: aCore;
		userId: self mockUser1 id;
		isOutgoing: false;
		date: self mockMessageDate;
		id: self mockMessageId