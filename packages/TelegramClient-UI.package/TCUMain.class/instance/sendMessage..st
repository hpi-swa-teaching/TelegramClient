core communication
sendMessage: aDictionary

	self core sendMessage: (aDictionary at: 'message') to: (aDictionary at: 'chatId').