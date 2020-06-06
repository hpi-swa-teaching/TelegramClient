accessing
addChat: aChatEvent

	| userId chat |
	
	userId := aChatEvent at: 'user_id'.
	chat := TCCChat new userId: userId.
	chat fullName ifNil: [self messageHandler getChatInfos: userId].
	chat order ifNil: [chat order: '0'].
	
	self chats add: chat.