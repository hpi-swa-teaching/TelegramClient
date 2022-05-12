testing
testNotificationHidesPrivateChatTitle

	| chat message |

	chat := TCTMMocks mockPrivateChat.
	message := TCCTextMessage new
		text: 'test';
		chat: chat;
		core: self core;
		userId: TCTMMocks mockUser1 id.

	self wantsToTest: (TCUNotification newWithMessage: message).
	self assertNotReading: TCTMMocks mockPrivateChat title in: self subject.