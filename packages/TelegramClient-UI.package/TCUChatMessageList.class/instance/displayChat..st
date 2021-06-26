messages
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #addBottom: to: self.
	aChat when: #loadedMessage send: #addTop: to: self.
	self
		chat: aChat;
		showMessages;
		isLoadingHistory: true.