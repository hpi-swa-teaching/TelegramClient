messages
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #showMessages to: self.
	self
		chat: aChat;
		showMessages.