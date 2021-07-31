events
openNewChat: aChatEvent

	| newChat |
	newChat := TCCChat newFromChatEvent: aChatEvent.
	self halt.
	(self core chats hasChat: newChat id)
		ifFalse: [self core chats add: newChat.]
		ifTrue: [newChat := self core chats getChat: newChat id.].
	self core chats triggerEvent: #openNewChat with: newChat.