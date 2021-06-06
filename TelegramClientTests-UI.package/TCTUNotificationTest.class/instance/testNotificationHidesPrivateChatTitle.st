testing
testNotificationHidesPrivateChatTitle

	| chat message sender |
	
	chat := TCTMocks mockPrivateChat.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertNotReading: TCTMocks mockPrivateChat title in: self subject.