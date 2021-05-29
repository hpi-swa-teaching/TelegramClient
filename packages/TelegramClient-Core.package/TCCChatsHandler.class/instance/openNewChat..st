events
openNewChat: aChatEvent

	self halt.
	self app chats triggerEvent: #openNewChat with: (TCCChat newFromChatEvent: aChatEvent).