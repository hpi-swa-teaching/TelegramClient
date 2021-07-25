testing
testNotificationConstructor

	| chat message notification |

	chat := TCTMMocks mockPrivateChat.
	message := TCCTextMessage new
		chat: chat;
		core: self core;
		userId: TCTMMocks mockUser1 id;
		text: 'm'.
	notification := TCUNotification newWithMessage: message.

	self assert: chat equals: notification chat.
	self assert: message equals: notification message.