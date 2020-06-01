accessing
getChatFromID: anId

	| chat |
	
	chat := self chats at: anId ifAbsent: [self halt: 'chat not found'].
	
	chat fullName ifNil: [self messageHandler getChat: anId].
	
	^ chat