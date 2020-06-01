accessing
addChat: aChatEvent

	| userId chat |
	
	userId := aChatEvent at: 'user_id'.
	chat := TCCChat new userId: userId.
	chat fullName ifNil: [self messageHandler getChatInfos: userId].
	
	self chats at: userId put: chat.