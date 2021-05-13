events
openNewChat: aChatEvent

	self app chats triggerEvent: #openNewChat with: (TCCChat newFromChatEvent: aChatEvent).