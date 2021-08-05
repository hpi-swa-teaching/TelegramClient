events
openNewChat: anEvent

	| newChat |
	newChat := TCCChat newFromChatEvent: anEvent.
	(self chats hasChat: newChat id)
		ifFalse: [self chats add: newChat.]
		ifTrue: [newChat := self core chats getChat: newChat id.].
	self chats triggerEvent: #openNewChat with: newChat.