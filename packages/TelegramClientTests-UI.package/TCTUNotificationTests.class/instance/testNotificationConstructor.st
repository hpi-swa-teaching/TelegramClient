testing
testNotificationConstructor

	| chat message notification |
	
	chat := TCTMMocks mockPrivateChat.
	message := TCCMessage new
		chat: chat;
		core: self core;
		senderID: TCTMMocks mockUser id;
		message: 'm'.
	notification := TCUNotification newWithMessage: message.
	
	self assert: TCTMMocks mockUser equals: notification sender.
	self assert: chat equals: notification chat.
	self assert: message equals: notification message.