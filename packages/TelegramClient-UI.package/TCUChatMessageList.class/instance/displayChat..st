messages
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #addMessages to: self.
	self
		chat: aChat;
		lowestVisibleMessage: 0;
		addMessages.