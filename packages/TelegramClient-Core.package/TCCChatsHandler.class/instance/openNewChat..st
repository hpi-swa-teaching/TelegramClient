events
openNewChat: aChatEvent

	self core chats triggerEvent: #openNewChat with: (TCCChat newFromChatEvent: aChatEvent).