events
openNewChat: aChat

	self app chats triggerEvent: #openNewChat with: (TCCChat newFromNewChatEvent: aChat).