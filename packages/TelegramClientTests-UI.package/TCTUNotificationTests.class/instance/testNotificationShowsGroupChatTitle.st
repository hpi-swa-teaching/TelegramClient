testing
testNotificationShowsGroupChatTitle

	| chat message sender |
	
	chat := TCTMMocks mockBasicGroupChat.
	sender := TCCUser new.
	message := TCCMessage new sender: sender; chat: chat.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertReading: TCTMMocks mockBasicGroupChat title in: self subject.