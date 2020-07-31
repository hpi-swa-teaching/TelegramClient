initialization
subscribeChatsList

	self chatsList
		when: #chatDeselected send: #clear to: self chatWindow;
		when: #newChatSelected send: #newChatSelected: to: self chatWindow;
		when: #newChatSelected send: #getChatHistoryFrom: to: self;
		when: #openNewChat send: #newChatSelected: to: self.