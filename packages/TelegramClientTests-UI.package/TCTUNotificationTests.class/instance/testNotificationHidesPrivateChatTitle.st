testing
testNotificationHidesPrivateChatTitle

	| chat message sender |
	
	chat := TCTMMocks mockPrivateChat.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertNotReading: TCTMMocks mockPrivateChat title in: self subject.