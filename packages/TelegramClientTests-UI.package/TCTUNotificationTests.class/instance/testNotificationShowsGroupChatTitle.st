testing
testNotificationShowsGroupChatTitle

	| chat message |
	
	chat := TCTMMocks mockBasicGroupChat.
	message := TCCMessage new
		chat: chat;
		core: self core;
		senderID: TCTMMocks mockUser id.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertReading: TCTMMocks mockBasicGroupChat title in: self subject.