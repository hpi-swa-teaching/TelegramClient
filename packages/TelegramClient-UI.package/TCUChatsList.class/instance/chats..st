accessing
chats: aCollection

	chats := aCollection.
	self redrawItems.
	chats when: #chatsListChanged send: #redrawItems to: self.
	chats when: #openNewChat send: #openNewChat: to: self.