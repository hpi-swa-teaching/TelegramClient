messages
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #addAtBottom: to: self.
	aChat when: #loadedMessage send: #addAtTop: to: self.
	
	self
		chat: aChat;
		showMessages.