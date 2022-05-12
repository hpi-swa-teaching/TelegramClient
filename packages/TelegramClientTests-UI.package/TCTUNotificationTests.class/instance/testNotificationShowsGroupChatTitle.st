testing
testNotificationShowsGroupChatTitle

	| chat message |

	chat := TCTMMocks mockBasicGroupChat.
	message := TCCTextMessage new
		text: 'test';
		chat: chat;
		core: self core;
		userId: TCTMMocks mockUser1 id.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertReading: TCTMMocks mockBasicGroupChat title in: self subject.