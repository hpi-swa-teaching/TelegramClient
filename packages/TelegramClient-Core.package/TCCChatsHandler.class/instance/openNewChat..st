events
openNewChat: aChat
	
	| chat |
	chat := TCCChat new.
	chat id: (aChat at: 'id').

	self app chats triggerEvent: #openNewChat with: chat.