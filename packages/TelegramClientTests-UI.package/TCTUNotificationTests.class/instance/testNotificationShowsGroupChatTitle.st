testing
testNotificationShowsGroupChatTitle

	| chat message |

	chat := TCTMMocks mockBasicGroupChat.
	message := TCCMessage new
		chat: chat;
		core: self core;
		senderID: TCTMMocks mockUser1 id.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertReading: TCTMMocks mockBasicGroupChat title in: self subject.