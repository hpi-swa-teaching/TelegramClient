messages
displayChat: aChat

	self chat removeActionsWithReceiver: self.
	aChat when: #newMessage send: #addAtBottom: to: self.
	aChat when: #loadedMessage send: #addAtTop: to: self.
	aChat when: #addBottomDayDivider send: #addBottomDayDividerForDate:inChat: to: self.
	aChat when: #addTopDayDivider send: #addTopDayDividerForDate:inChat: to: self.
	
	self
		chat: aChat;
		showMessages.