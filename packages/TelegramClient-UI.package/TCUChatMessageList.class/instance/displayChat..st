accessing
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #redrawMessages to: self.
	self
		chat: aChat;
		redrawMessages.