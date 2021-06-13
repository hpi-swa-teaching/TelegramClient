testing
testNotificationHidesPrivateChatTitle

	| chat message |
	
	chat := TCTMMocks mockPrivateChat.
	message := TCCMessage new 
		chat: chat; 
		core: self core; 
		senderID: TCTMMocks mockUser id.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertNotReading: TCTMMocks mockPrivateChat title in: self subject.