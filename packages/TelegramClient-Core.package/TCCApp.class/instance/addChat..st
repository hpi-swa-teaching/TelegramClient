accessing
addChat: aChatEvent

	| userId |
	
	userId := aChatEvent at: 'user_id'.
	self chats at: userId put: (TCCChat new userId: userId).