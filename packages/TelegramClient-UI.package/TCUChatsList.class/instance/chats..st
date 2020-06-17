accessing
chats: aCollection

	chats := aCollection.
	self redrawItems.
	chats when: #newChatLoaded send: #redrawItems to: self.