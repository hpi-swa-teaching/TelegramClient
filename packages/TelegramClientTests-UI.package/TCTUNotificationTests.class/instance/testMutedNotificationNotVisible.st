testing
testMutedNotificationNotVisible

	| message |
	message := TCTMMocks mockMessage.
	message chat: TCTMMocks mockMutedPrivateChat.
	TCUMain basicNew newMessageReceived: message.
	self deny: ((Project current world submorphOfClass: TCUNotification) notNil).