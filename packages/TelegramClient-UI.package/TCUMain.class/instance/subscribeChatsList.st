initialization
subscribeChatsList

	self chatsList
		when: #chatDeselected send: #clear to: self chatWindow;
		when: #newChatSelected send: #newChatSelected: to: self chatWindow;
		when: #newChatSelected send: #getChatHistoryFrom: to: self;
		when: #newChatLoaded send: #addLoadedChat to: self chatsList;
		when: #openNewChat send: #newChatSelected: to: self.