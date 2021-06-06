testing
testNotificationShowsGroupChatTitle

	| chat message sender |
	
	chat := TCTMocks mockBasicGroupChat.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertReading: TCTMocks mockBasicGroupChat title in: self subject.